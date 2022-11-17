//
//  ViewController.swift
//  lesson204
//
//  Created by Garib Agaev on 17.11.2022.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var numberRedLabel: UILabel!
    
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var numberGreenLabel: UILabel!
    
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var numberBlueLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setColor(red: redSlider.value, green: greenSlider.value, blue: blueSlider.value)
    }
    
    override func viewWillLayoutSubviews() {
        colorView.layer.cornerRadius = colorView.frame.height / 10
        setTestFor(
            labels: [numberRedLabel, numberGreenLabel, numberBlueLabel],
            texts: [redSlider, greenSlider, blueSlider]
        )
    }
    
    @IBAction func changeRedSlider() {
        setColor(red: redSlider.value, green: greenSlider.value, blue: blueSlider.value)
        numberRedLabel.text = String(format: "%.2f", redSlider.value)
        
    }

    @IBAction func changeGreenSlider() {
        setColor(red: redSlider.value, green: greenSlider.value, blue: blueSlider.value)
        numberGreenLabel.text = String(format: "%.2f", greenSlider.value)
    }

    @IBAction func changeBlueSlider() {
        setColor(red: redSlider.value, green: greenSlider.value, blue: blueSlider.value)
        numberBlueLabel.text = String(format: "%.2f", blueSlider.value)
    }
    
    private func setTestFor(labels: [UILabel], texts: [UISlider]) {
        let count = labels.count
        var index = 0
        while index < count {
            labels[index].text = String(format: "%.2f", texts[index].value)
            index += 1
        }
    }
    
    private func setColor(red: Float, green: Float, blue: Float) {
        colorView.backgroundColor = UIColor(red: CGFloat(red), green: CGFloat(green), blue: CGFloat(blue), alpha: 1)
    }
    
}


//
//  ViewController.swift
//  ColorizedApp
//
//  Created by Misha Shkitov on 15.06.23.
//

import UIKit

class ViewController: UIViewController {

    //MARK: - IBOutlets
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redAmountLabel: UILabel!
    @IBOutlet var greenAmountLabel: UILabel!
    @IBOutlet var blueAmountLabel: UILabel!
    @IBOutlet var opacityAmountLabel: UILabel!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var opacitySlider: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        colorView.layer.cornerRadius = 10
        setupSliderOpacity(opacitySlider)
        setupSliderColor(redSlider, tintColor: .red)
        setupSliderColor(greenSlider, tintColor: .green)
        setupSliderColor(blueSlider, tintColor: .blue)
        setupAmountLabels()
        updateColor()
        view.backgroundColor = .systemGray6
    }

    //MARK: - IBAction
    @IBAction func redSliderAction() {
//        redAmountLabel.text = String(Int(redSlider.value.rounded()))
        redAmountLabel.text = String(format: "%.0f", redSlider.value)
        updateColor()
    }
    
    @IBAction func greenSliderAction() {
//        greenAmountLabel.text = String(Int(greenSlider.value.rounded()))
        greenAmountLabel.text = String(format: "%.0f", greenSlider.value)
        updateColor()
    }
    
    @IBAction func blueSliderAction() {
//       blueAmountLabel.text = String(Int(blueSlider.value.rounded()))
        blueAmountLabel.text = String(format: "%.0f", blueSlider.value)
        updateColor()
    }
    
    @IBAction func opacitySliderAction() {
//        opacityAmountLabel.text = String(Int(opacitySlider.value.rounded()))
        opacityAmountLabel.text = String(format: "%.0f", opacitySlider.value)
        updateColor()
    }
    
    //MARK: - Private methods
    private func setupSliderColor(_ slider: UISlider, tintColor: UIColor) {
        slider.minimumValue = 0
        slider.maximumValue = 255
        slider.minimumTrackTintColor = tintColor
        slider.value = Float(Int.random(in: 0...255))
    }
    
    private func setupSliderOpacity(_ slider: UISlider) {
        slider.minimumValue = 0
        slider.maximumValue = 100
        slider.minimumTrackTintColor = .lightGray
        slider.value = 100
    }

    
    private func setupAmountLabels() {
        redAmountLabel.text = String(format: "%.0f", redSlider.value)
        greenAmountLabel.text = String(format: "%.0f", greenSlider.value)
        blueAmountLabel.text = String(format: "%.0f", blueSlider.value)
        opacityAmountLabel.text = String(format: "%.0f", opacitySlider.value)
    }
    
    private func updateColor() {
        let red = CGFloat(redSlider.value / 255)
        let green = CGFloat(greenSlider.value / 255)
        let blue = CGFloat(blueSlider.value / 255)
        let opacity = CGFloat(opacitySlider.value / 100)
        
        colorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: opacity)
    }
 
}


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
        setupSliders()
        setupAmountLabels()
        updateColor()
        view.backgroundColor = .systemGray6
    }

    //MARK: - IBAction
    @IBAction func redSliderAction() {
        redAmountLabel.text = String(Int(redSlider.value.rounded()))
        updateColor()
    }
    
    @IBAction func greenSliderAction() {
        greenAmountLabel.text = String(Int(greenSlider.value.rounded()))
        updateColor()
    }
    
    @IBAction func blueSliderAction() {
        blueAmountLabel.text = String(Int(blueSlider.value.rounded()))
        updateColor()
    }
    
    @IBAction func opacitySliderAction() {
        opacityAmountLabel.text = String(Int(opacitySlider.value.rounded()))
        updateColor()
    }
    
    //MARK: - Private methods
    private func setupSliders() {
        redSlider.minimumValue = 0
        redSlider.maximumValue = 255
        redSlider.minimumTrackTintColor = .red
        redSlider.value = Float(Int.random(in: 0...255))
  
        greenSlider.minimumValue = 0
        greenSlider.maximumValue = 255
        greenSlider.minimumTrackTintColor = .green
        greenSlider.value = Float(Int.random(in: 0...255))
   
        blueSlider.minimumValue = 0
        blueSlider.maximumValue = 255
        blueSlider.minimumTrackTintColor = .blue
        blueSlider.value = Float(Int.random(in: 0...255))
    
        opacitySlider.minimumValue = 0
        opacitySlider.maximumValue = 100
        opacitySlider.minimumTrackTintColor = .lightGray
        opacitySlider.value = 100
    }
    
    private func setupAmountLabels() {
        redAmountLabel.text = String(Int(redSlider.value.rounded()))
        greenAmountLabel.text = String(Int(greenSlider.value.rounded()))
        blueAmountLabel.text = String(Int(blueSlider.value.rounded()))
        opacityAmountLabel.text = String(Int(opacitySlider.value.rounded()))
    }
    
    private func updateColor() {
        let red = CGFloat(redSlider.value / 255)
        let green = CGFloat(greenSlider.value / 255)
        let blue = CGFloat(blueSlider.value / 255)
        let opacity = CGFloat(opacitySlider.value / 100)
        
        colorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: opacity)
    }
 
}


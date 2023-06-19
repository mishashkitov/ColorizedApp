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
    }

    //MARK: - IBAction
    @IBAction func redSliderAction() {
        redAmountLabel.text = String(Int(redSlider.value.rounded()))
    }
    
    @IBAction func greenSliderAction() {
        greenAmountLabel.text = String(Int(greenSlider.value.rounded()))
        print("greeen")
    }
    
    @IBAction func blueSliderAction() {
        blueAmountLabel.text = String(Int(blueSlider.value.rounded()))
    }
    
    @IBAction func opacitySliderAction() {
        opacityAmountLabel.text = String(Int(opacitySlider.value.rounded()))
    }
    
    //MARK: - Private methods
    private func setupSliders() {
        redSlider.minimumValue = 1
        redSlider.maximumValue = 255
        redSlider.value = 50
        redSlider.minimumTrackTintColor = .red
  
        greenSlider.minimumValue = 1
        greenSlider.maximumValue = 255
        greenSlider.value = 1
        greenSlider.minimumTrackTintColor = .green
   
        blueSlider.value = 1
        blueSlider.minimumValue = 1
        blueSlider.maximumValue = 255
        blueSlider.minimumTrackTintColor = .blue
    
        opacitySlider.value = 1
        opacitySlider.minimumValue = 1
        opacitySlider.maximumValue = 100
        opacitySlider.minimumTrackTintColor = .white
    }
    
  
    
    private func setupAmountLabels() {
        redAmountLabel.text = String(Int(redSlider.value.rounded()))
        greenAmountLabel.text = String(Int(greenSlider.value.rounded()))
        blueAmountLabel.text = String(Int(blueSlider.value.rounded()))
        opacityAmountLabel.text = String(Int(opacitySlider.value.rounded()))
    }
 
}


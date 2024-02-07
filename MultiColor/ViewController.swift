//
//  ViewController.swift
//  MultiColor
//
//  Created by Ильнар Ижгузин on 03.02.2024.
//

import UIKit

final class ViewController: UIViewController {
    @IBOutlet var multiColorView: UIView!

    @IBOutlet var redValueLabel: UILabel!
    @IBOutlet var greenValueLabel: UILabel!
    @IBOutlet var blueValueLabel: UILabel!

    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!

    override func viewDidLoad() {
        super.viewDidLoad()

        multiColorView.layer.cornerRadius = 15

        redSliderAction()
        greenSliderAction()
        blueSliderAction()
    }

    private func setColor() {
        multiColorView.backgroundColor = UIColor(
            red: CGFloat(
                redSlider.value
            ),
            green: CGFloat(
                greenSlider.value
            ),
            blue: CGFloat(
                blueSlider.value
            ),
            alpha: 1
        )
    }
    
    private func string(from slider: UISlider) -> String {
        String(format: "%.2f", slider.value)
    }

    @IBAction func redSliderAction() {
        redValueLabel.text = String(format: "%.2f", redSlider.value)
        setColor()
    }

    @IBAction func greenSliderAction() {
        greenValueLabel.text = string(from: greenSlider)
        setColor()
    }

    @IBAction func blueSliderAction() {
        blueValueLabel.text = string(from: blueSlider)
        setColor()
    }
}

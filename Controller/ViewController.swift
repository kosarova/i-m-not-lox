//
//  ViewController.swift
//  I`m not lox
//
//  Created by Roman Kobzarev on 03.01.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var currentEx: UILabel!
    @IBOutlet weak var sliderUI: UISlider!
    @IBOutlet weak var progressBar: UIProgressView!
    
    let maxCountOfCourses = 555
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func sliderChanged(_ sender: UISlider) {
        let sliderValue = Float(String(format: "%.2f",  sender.value))
        let resultSliderValue = Int(round(sliderValue! * 55500 / 100))
        currentEx.text = "currentEx: \(resultSliderValue)"
        resultLabel.text = "Result: \(resultSliderValue * 100 / 555)%"
        progressBar.progress = sliderValue!
    }
    
}


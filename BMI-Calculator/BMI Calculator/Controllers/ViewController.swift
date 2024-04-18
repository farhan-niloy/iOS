//
//  ViewController.swift
//  BMI Calculator
//
//  Created by Angela Yu on 21/08/2019.
//  Copyright © 2019 Angela Yu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var heightValues: UILabel!
    @IBOutlet weak var Calculate: UIButton!
    @IBOutlet weak var weightValues: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func heightSlider(_ sender: UISlider) {
        heightValues.text = String(sender.value)
    }
    
    @IBAction func weightSlider(_ sender: UISlider) {
        weightValues.text = String(sender.value)
    }
    
    func updateUI() {
        
    }
    
}


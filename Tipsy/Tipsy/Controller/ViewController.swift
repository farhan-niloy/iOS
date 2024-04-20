//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var button0: UIButton!
    @IBOutlet weak var button10: UIButton!
    @IBOutlet weak var button20: UIButton!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var stepperButtons: UIStepper!
    
    var tip = 1.2
    var numberOfPeople = 2.0
    var total = 0.0
    var finalResult = "0.0"
  
    
    var tipsBrain = TipsBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        guard let billText = billField.text, let bill = Float(billText)
        else {
            return
        }
        
        let color = UIColor(red: 0x00/255, green: 0xB0/255, blue: 0x6B/255, alpha: 1.0)
        
        if (button0.isSelected) {
            tip = 0.0
           

            button0.backgroundColor = color
            
        } else if (button10.isSelected) {
            tip = 1.1
            button10.backgroundColor = color
        } else {
            tip = 1.2
            button20.backgroundColor = color
        }
        
        let individulTips = tipsBrain.calculateTips(bill, Float(tip), Float(numberOfPeople))
        
        print(individulTips)
        
    }
    
}


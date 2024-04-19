//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Farhan Niloy on 4/19/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    var bmiValue = "0.0"
    
    mutating func calculateBMI(height: Float, weight: Float) {
        bmiValue = String(format: "%.1f", Float(weight) / Float(pow(height, 2)))
    }
    
    func getBMIValue() -> String {
        return bmiValue
    }
}

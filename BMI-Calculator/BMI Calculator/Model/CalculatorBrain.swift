//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Farhan Niloy on 4/19/24.
//  Copyright © 2024 Angela Yu. All rights reserved.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    mutating func calculateBMI(height: Float, weight: Float) {
        let bmiValue = weight / pow(height, 2)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: UIColor.blue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as fiddle!", color: UIColor.systemGreen)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less pies!!!", color: UIColor.systemRed)
        }
        
        
    }
    
    func getBMIValue() -> String {
        let bmi1DecimalPlaceValue = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmi1DecimalPlaceValue
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No advice!"
    }
    
    func getColor() -> UIColor{
        return bmi?.color ?? UIColor.white
    }
}

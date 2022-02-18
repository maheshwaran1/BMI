//
//  CalculatorBrain.swift
//  BMI
//
//  Created by Maheshwaran on 17/02/22.
//

import UIKit

struct CalculatorBrain {
    
    var bmi: BMI?
    
    func getBMIValue() -> String {
        let bmiToOneDecimalPlace = String(format: "%.1f", bmi?.value ?? 0.0)
        return bmiToOneDecimalPlace
    }
    
    mutating func calculateBMI(height: Float,weight:Float) {
        let bmiValue = weight/(height*height)
        
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more Pies!",color: UIColor.systemBlue)
        } else if bmiValue < 24.9 {
            bmi = BMI(value: bmiValue, advice: "Fit as a Fiddle!",color: UIColor.systemGreen)
        } else {
            bmi = BMI(value: bmiValue, advice: "Eat less Pies!",color: UIColor.systemRed)
        }
    }
    
    func getAdvice() -> String {
        return bmi?.advice ?? "No Advice"
    }
    
    func getColor() -> UIColor {
        return bmi?.color ?? UIColor.white
    }
}

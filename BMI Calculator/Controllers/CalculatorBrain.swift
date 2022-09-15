//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Chris Hand on 9/14/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation
import UIKit

struct CalculatorBrain {
    
    var bmi: BmiData?
    
    mutating func calculateBmi(weight: Float, height: Float) -> BmiData {
        let value = weight / (height * height)
        let advice = getAdvice(bmiValue: value)
        let color = getColor(bmiValue: value)
        self.bmi = BmiData(value: value, advice: advice, color: color)
        return self.bmi!
    }
    
    func formatHeight(height: Float) -> String {
        return String(format: "%.1f", height) + "m"
    }
    
    func formatWeight(weight: Float) -> String {
        return String(format: "%.1f", weight) + "Kg"
    }
    
    private func getAdvice(bmiValue: Float) -> String {
        if bmiValue < 18.5 {
            return "Eat a sandwich"
        }
        
        if bmiValue < 25 {
            return "You are good to go!"
        }
        
        return "Run Forrest, Run!"
    }
    
    private func getColor(bmiValue: Float) -> UIColor {
        if bmiValue < 18.5 {
            return .blue
        }
        
        if bmiValue < 25 {
            return .green
        }
        
        return .red
    }
    
}

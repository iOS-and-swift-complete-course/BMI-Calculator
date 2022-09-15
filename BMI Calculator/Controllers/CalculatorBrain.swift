//
//  CalculatorBrain.swift
//  BMI Calculator
//
//  Created by Chris Hand on 9/14/22.
//  Copyright © 2022 Angela Yu. All rights reserved.
//

import Foundation

struct CalculatorBrain {
    
    func calculateBmi(weight: Float, height: Float) -> Float {
        return weight / (height * height)
    }
    
    func formatHeight(height: Float) -> String {
        return String(format: "%.1f", height) + "m"
    }
    
    func formatWeight(weight: Float) -> String {
        return String(format: "%.1f", weight) + "Kg"
    }
    
}

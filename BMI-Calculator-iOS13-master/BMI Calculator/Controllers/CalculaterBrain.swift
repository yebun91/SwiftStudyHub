//
//  CalculaterBrain.swift
//  BMI Calculator
//
//  Created by rgorithm_mactest on 2023/05/03.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import Foundation

struct CalculaterBrain {
    var bmiValue: Float = 0.0
    
    mutating func calculateBMI(height:Float, weight:Float) {
        bmiValue = weight / pow(height, 2)
    }
    
    func getBMIValue() -> String{
        return String(format: "%.1f", bmiValue)
    }
}

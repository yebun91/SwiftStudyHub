//
//  CalculaterBrain.swift
//  BMI Calculator
//
//  Created by rgorithm_mactest on 2023/05/03.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

struct CalculaterBrain {
    var bmi: BMI?
    let color = [#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1), #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1), #colorLiteral(red: 0.9254902005, green: 0.2352941185, blue: 0.1019607857, alpha: 1)]
    mutating func calculateBMI(height:Float, weight:Float) {
        let bmiValue = weight / pow(height, 2)
        if bmiValue < 18.5 {
            bmi = BMI(value: bmiValue, advice: "Eat more pies!", color: color[0])
        }else if bmiValue <= 24.9{
            bmi = BMI(value: bmiValue, advice: "Fit as a fiddle!", color: color[1])
        }else{
            bmi = BMI(value: bmiValue, advice: "Eat less pies!", color: color[2])
        }
    }
    
    func getBMIValue() -> String{
        return String(format: "%.1f", bmi?.value ?? 0.0)
    }
    
    func getBMI() -> BMI?{
        return bmi
    }
}

//
//  ResultViewController.swift
//  BMI Calculator
//
//  Created by 최유진 on 2023/05/02.
//  Copyright © 2023 Angela Yu. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var adviceLabel: UILabel!
    @IBOutlet weak var bmiLabel: UILabel!
    @IBOutlet weak var bg: UIImageView!
    
    var bmiValue : String?
    var bmi : BMI?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        bmiLabel.text = String(format: "%.1f", bmi?.value ?? 0.0)
        adviceLabel.text = bmi?.advice
        bg.backgroundColor = bmi?.color
        // Do any additional setup after loading the view.
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true)
    }
    


}

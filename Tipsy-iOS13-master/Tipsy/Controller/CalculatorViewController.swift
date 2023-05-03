//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class CalculatorViewController: UIViewController {

    @IBOutlet weak var billTextField: UITextField!
    @IBOutlet weak var zeroPctButton: UIButton!
    @IBOutlet weak var tenPctButton: UIButton!
    @IBOutlet weak var twentyPctButton: UIButton!
    @IBOutlet weak var splitNumberLabel: UILabel!
    
    var selectedPct : Float = 0.1
    var count : Int = 2
    var billAmount : Float = 1.0
    
    var tipDataBrain = TipDataBrain()

    @IBAction func tipChange(_ sender: UIButton) {
        zeroPctButton.isSelected = false
        tenPctButton.isSelected = false
        twentyPctButton.isSelected = false
        sender.isSelected = true
        let pct = sender.currentTitle
        
        
        if pct == "0%"{
            selectedPct = 1.0
        }else if pct == "10%" {
            selectedPct = 1.1
        }else{
            selectedPct = 1.2
        }
    }
    
    @IBAction func stepperValueChange(_ sender: UIStepper) {
        count = Int(sender.value)
        splitNumberLabel.text = "\(count)"

    }
    
    @IBAction func calculatePressed(_ sender: UIButton) {
        billAmount = Float(billTextField.text!) ?? 0.0
        tipDataBrain.calculate(bill: billAmount, select: selectedPct, ct: count)
        performSegue(withIdentifier: "showResultView", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "showResultView" {
            if let resultView = segue.destination as? ResultsViewController {
                resultView.receiveData = tipDataBrain.getResult()
                resultView.tipData = tipDataBrain.getTipData()
            }
        }
    }
}


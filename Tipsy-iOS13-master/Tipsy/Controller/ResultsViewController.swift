//
//  ResultsViewConstrollerViewController.swift
//  Tipsy
//
//  Created by rgorithm_mactest on 2023/05/03.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import UIKit

class ResultsViewController: UIViewController {

    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var settingsLabel: UILabel!
    var receiveData : String?
    var tipData : TipData?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        totalLabel.text = receiveData ?? "0.0"
        if (tipData != nil) {
            settingsLabel.text = "Split between \(Int(tipData!.count)) people, with \(Int((tipData!.selectedPct - 1.0) * 100))% tip."
        }
    }
    
    @IBAction func recalculatePressed(_ sender: UIButton) {
        dismiss(animated: true)
    }

}

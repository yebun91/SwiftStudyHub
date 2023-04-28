//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var text: UILabel!
    
    let eggTimes = ["Soft" : 5, "Medium" : 7, "Hard" : 12]
    var timer = Timer()
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        var sec = eggTimes[sender.currentTitle!]!
        
        timer.invalidate()

        timer = Timer.scheduledTimer(withTimeInterval: 1.0, repeats:true){ timer in
            print(sec)
            if sec == 0 {
                timer.invalidate()
                self.text.text = "완료"
            }else{
                self.text.text = "\(sec)"
                sec-=1
            }
        }
    }
    
}

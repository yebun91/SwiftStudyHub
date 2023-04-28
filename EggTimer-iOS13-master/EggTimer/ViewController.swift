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
    @IBOutlet weak var progress: UIProgressView!
    
    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 7]
        var timer = Timer()
        var totalTime = 0
        var secondsPassed = 0
        
        @IBAction func hardnessSelected(_ sender: UIButton) {
            
            timer.invalidate()
            let hardness = sender.currentTitle!
            totalTime = eggTimes[hardness]!

            progress.progress = 0.0
            secondsPassed = 0
            text.text = hardness

            timer = Timer.scheduledTimer(timeInterval: 1.0, target:self, selector: #selector(updateTimer), userInfo:nil, repeats: true)
        }
        
        @objc func updateTimer() {
            if secondsPassed < totalTime {
                secondsPassed += 1
                progress.progress = Float(secondsPassed) / Float(totalTime)
                print(Float(secondsPassed) / Float(totalTime))
            } else {
                timer.invalidate()
                text.text = "DONE!"
            }
        }
    
}

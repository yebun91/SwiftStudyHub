//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func playSound(_ fileName: String) {
            let url = Bundle.main.url(forResource: fileName, withExtension: "wav")
            player = try! AVAudioPlayer(contentsOf: url!)
        player?.play()
                    
        }
    
    func changeOpacity(_ sender: UIButton){
        sender.alpha = 0.5
        print("start")
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.2){
                sender.alpha = 1
                print("end")
        }
    }
    
    @IBAction func keyPressed(_ sender: UIButton) {
//        if let buttonTitle = sender.currentTitle{
//            playSound(buttonTitle)
//        }
        playSound(sender.currentTitle!)
        changeOpacity(sender)
        
    }
}

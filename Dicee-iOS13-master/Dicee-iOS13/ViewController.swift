//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // 이미지 변수 지정
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    let diceImage = [UIImage(named:"DiceOne"),
                     UIImage(named:"DiceTwo"),
                     UIImage(named:"DiceThree"),
                     UIImage(named:"DiceFour"),
                     UIImage(named:"DiceFive"),
                     UIImage(named: "DiceSix") ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func rollButtonPressed(_ sender: UIButton) {
        // 주사위 이미지를 변경
        diceImageView1.image = diceImage[Int.random(in: 0...5)]
        diceImageView2.image = diceImage[Int.random(in: 0...5)]
    }
}


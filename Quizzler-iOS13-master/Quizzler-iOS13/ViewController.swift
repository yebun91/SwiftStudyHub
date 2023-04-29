//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var trueButton: UIButton!
    
    let quiz = [
        ["5 + 2 = 6", "True"],
        ["5 - 3 = 1", "True"],
        ["3 + 8 < 10", "False"]
    ]
    var questionNumber = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }

    @IBAction func answerButtonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let actualAnswer = quiz[questionNumber][1]
        
        if userAnswer == actualAnswer {
            print("Right!")
        }else{
            print("Wrong!")
        }
        
        if questionNumber + 1 < quiz.count {
            questionNumber += 1
        }else{
            questionNumber = 0
        }
        updateUI()
    }
    
    func updateUI(){
        questionLabel.text = quiz[questionNumber][0]
    }
    
}


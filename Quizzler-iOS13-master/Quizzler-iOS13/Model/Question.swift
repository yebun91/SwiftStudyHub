//
//  Question.swift
//  Quizzler-iOS13
//
//  Created by 최유진 on 2023/04/30.
//  Copyright © 2023 The App Brewery. All rights reserved.
//

import Foundation
struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        self.text = q
        self.answer = a
    }
}

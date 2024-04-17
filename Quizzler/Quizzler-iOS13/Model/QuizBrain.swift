//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Farhan Niloy on 4/17/24.
//  Copyright © 2024 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quizz = [
        Questions(q: "Farhan loves Fahmida", a: "True"),
        Questions(q: "Fahmida loves Farhan", a: "False"),
        Questions(q: "Fahmida is the most mijestic girl Farhan's eye", a: "True"),
        Questions(q: "Fahmida is smart", a: "True"),
        Questions(q: "Farhan's dream girl is Fahmida", a: "True"),
        Questions(q: "Fahmida is a great artist", a: "True"),
        Questions(q: "Fahmida herself is a piece of art", a: "True"),
    ]
    
    var questionNumber = 0
    
    func checkAnswer(_ userAnswer: String) -> Bool {
        if userAnswer == quizz[questionNumber].answer {
            return true
        } else {
            return false
        }
    
    }
    
}

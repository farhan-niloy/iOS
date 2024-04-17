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
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quizz = [
        Questions(question: "Farhan loves Fahmida", answer: "True"),
        Questions(question: "Fahmida loves Farhan", answer: "False"),
        Questions(question: "Fahmida is the most mijestic girl Farhan's eye", answer: "True"),
        Questions(question: "Fahmida is smart", answer: "True"),
        Questions(question: "Farhan's dream girl is Fahmida", answer: "True"),
        Questions(question: "Fahmida is a great artist", answer: "True"),
        Questions(question: "Fahmida herself is a piece of art", answer: "True"),
        ]
    var questionNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        UpdateUI()

    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle
        let actualAnswer = quizz[questionNumber].answer
        
        if userAnswer == actualAnswer {
            print("Right!")
        } else {
            print("Wrong!")
        }
        
        if quizz.count > questionNumber+1 {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        
        UpdateUI()
    }
    
    func UpdateUI() {
        questionLabel.text = quizz[questionNumber].question
    }
    

}


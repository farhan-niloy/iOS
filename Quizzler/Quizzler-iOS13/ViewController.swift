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
        Questions(q: "Farhan loves Fahmida", a: "True"),
        Questions(q: "Fahmida loves Farhan", a: "False"),
        Questions(q: "Fahmida is the most mijestic girl Farhan's eye", a: "True"),
        Questions(q: "Fahmida is smart", a: "True"),
        Questions(q: "Farhan's dream girl is Fahmida", a: "True"),
        Questions(q: "Fahmida is a great artist", a: "True"),
        Questions(q: "Fahmida herself is a piece of art", a: "True"),
        ]
    
    var questionNumber = 0
    var timer = Timer()
    
    var timerDelay = 0.2
    
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
            sender.backgroundColor = UIColor.green
        } else {
            print("Wrong!")
            sender.backgroundColor = UIColor.red
        }
        
        if quizz.count > questionNumber+1 {
            questionNumber += 1
        } else {
            questionNumber = 0
        }
        
        Timer.scheduledTimer(timeInterval: timerDelay, target: self, selector: #selector(UpdateUI), userInfo: nil, repeats: false)
    }
    
    @objc func UpdateUI() {
        questionLabel.text = quizz[questionNumber].question
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        progressBar.progress = Float(questionNumber) / Float(quizz.count)
    }
    
}


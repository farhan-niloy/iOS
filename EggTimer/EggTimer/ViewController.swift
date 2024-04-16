//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    
    let eggTimes = ["Soft": 300, "Medium": 420, "Hard": 720]
    
    var secondsPast = 0
    var totalTime = 0
    
    var timer = Timer()
    
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        progressBar.progress = 1.0
        
        timer.invalidate()
        
        let hardness = sender.currentTitle!
        
        totalTime = eggTimes[hardness]!
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        if secondsPast < totalTime {
            
            let parcentageProgress = secondsPast / totalTime
            
            progressBar.progress = Float(parcentageProgress)
            
            secondsPast += 1
        } else {
            timer.invalidate()
            titleLabel.text = "DONE!"
        }
    }
    
}

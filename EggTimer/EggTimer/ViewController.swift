//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

var player: AVAudioPlayer?

func playSound() {
    guard let path = Bundle.main.path(forResource: "alarm_sound", ofType:"mp3") else {
        return }
    let url = URL(fileURLWithPath: path)
    
    do {
            player = try AVAudioPlayer(contentsOf: url)
            player?.play()
            
        } catch let error {
            print(error.localizedDescription)
        }
    }



class ViewController: UIViewController {
    
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    
    
    let eggTimes = ["Soft": 3, "Medium": 4, "Hard": 7]
    
    var secondsPast = 0
    var totalTime = 0
    
    var timer = Timer()
    
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        
        progressBar.progress = 1.0
        
        timer.invalidate()
        
        let hardness = sender.currentTitle!
        
        totalTime = eggTimes[hardness]!
        
        
        titleLabel.text = hardness
        
        progressBar.progress = 0.0
        secondsPast = 0
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    @objc func updateTimer() {
        if secondsPast < totalTime {
            
            secondsPast += 1
            
            let parcentageProgress = Float(secondsPast) / Float(totalTime)
            
            progressBar.progress = Float(parcentageProgress)
            
        } else {
            timer.invalidate()
            titleLabel.text = "DONE!"
            
            playSound()
        }
    }
    
}

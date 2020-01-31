//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    var player: AVAudioPlayer!
    // basic dictionary, don't need to specify type
//    let eggTimes : [String : Int] = [
//        "Soft": 300,
//        "Medium": 420,
//        "Hard": 720
//    ]
    
    let eggTimes : [String : Int] = [
        "Soft": 3,
        "Medium": 4,
        "Hard": 7
    ]
    var secondsPassed = 0
    var totalTime = 0
    var timer = Timer()
    
    @IBAction func hardnessSelected(_ sender: UIButton) {
        // stop/refresh timer, new timer with each press
        timer.invalidate()
        
        let hardness = sender.currentTitle!
        totalTime = eggTimes[hardness]!
        
        // reset everything
        secondsPassed = 0
        progressBar.progress = 0.0
        titleLabel.text = hardness
        
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateTimer), userInfo: nil, repeats: true)
    }
    
    
    @objc func updateTimer() {
        if secondsPassed < totalTime {
            secondsPassed += 1
            progressBar.progress = Float(secondsPassed) / Float(totalTime)
            
        } else {
            timer.invalidate() // kill timer
            titleLabel.text = "DONE!" // let user know what's up
            progressBar.progress = 1.0
            playAlarm()
        }
    }
    
    func playAlarm() {
        let url = Bundle.main.url(forResource: "alarm_sound", withExtension: "mp3")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}

//
//  ViewController.swift
//  EggTimer
//
//  Created by Angela Yu on 08/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let SOFT_TIME = 5
    let MEDIUM_TIME = 7
    let HARD_TIME = 12

    @IBAction func hardnessSelected(_ sender: UIButton) {
        let hardness = sender.currentTitle
        
        switch hardness {
        case "Soft":
            print(SOFT_TIME)
        case "Medium":
            print(MEDIUM_TIME)
        default:
            print(HARD_TIME)
        }
    }
    
}

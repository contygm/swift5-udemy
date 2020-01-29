//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // use ctrl + click to make connection to imageView component
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        // array of imageLiterals
        let diceImageArray = [#imageLiteral(resourceName: "DiceSix"),  #imageLiteral(resourceName: "DiceFive"),  #imageLiteral(resourceName: "DiceFour"),  #imageLiteral(resourceName: "DiceThree"),  #imageLiteral(resourceName: "DiceTwo"),  #imageLiteral(resourceName: "DiceOne")]
        
        // either option works the same
        diceImageView1.image = diceImageArray.randomElement()
        diceImageView2.image = diceImageArray[Int.random(in: 0...5)]
    }
}


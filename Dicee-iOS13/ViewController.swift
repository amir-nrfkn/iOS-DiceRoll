//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // IBOutlet allows to refer to UI elements (IB: interface builder)
    // IBOutlet: code interacts with UI
    // IBAction: UI interacts with code
    // a general rule: Who.What = Value
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    let diceArr = [#imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix")]

    @IBAction func rollButtonPress(_ sender: UIButton) {
        print("button pressed")
        diceImageView1.image = diceArr.randomElement()
        diceImageView2.image = diceArr.randomElement()
        
        // alternatively, can generate random number with:
        // Int.random(in: 0...5)
    }
    
}


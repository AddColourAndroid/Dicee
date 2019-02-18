//
//  ViewController.swift
//  Dicee
//
//  Created by Mpho Nkuna on 2019/02/18.
//  Copyright © 2019 mcnkuna. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rollDice()
    }
    
    @IBAction func rollDiceButtonPressed(_ sender: UIButton) {
         rollDice()
    }
    
    func rollDice() {
        
        diceImageView1.image = UIImage(named: diceArray[Int(arc4random_uniform(6))])
        diceImageView2.image = UIImage(named: diceArray[Int(arc4random_uniform(6))])
    }
}

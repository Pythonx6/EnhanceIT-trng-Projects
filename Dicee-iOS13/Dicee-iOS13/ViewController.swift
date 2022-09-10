//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var diceImage1:UIImageView!
    
    @IBOutlet weak var diceImage2: UIImageView!
    
    //array with all image numbers
    let imageNumbersArray = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func btnRoll(_ sender: UIButton) {
        //using random image number from array
        diceImage1.image =  imageNumbersArray.randomElement()
        diceImage2.image =  imageNumbersArray.randomElement()
     
    }
    
}


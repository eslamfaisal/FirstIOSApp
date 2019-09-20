//
//  ViewController.swift
//  FirstProject
//
//  Created by Eslam faisal on 9/17/19.
//  Copyright © 2019 com.eslam. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var randomDiceIndex1 : Int = 0
    var randomDiceIndex2 : Int = 0
    
    @IBOutlet weak var firtBall: UIImageView!
    @IBOutlet weak var secondBall: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func actinBtn(_ sender: UIButton) {
        randomDiceIndex1 = Int(arc4random_uniform(3))
        if(randomDiceIndex1 == 1){
            secondBall.image = UIImage(named: "dice1")
        }else if(randomDiceIndex1 == 2){
            secondBall.image = UIImage(named: "dice2")
        }else{
            secondBall.image = UIImage(named: "dice3")
        }
        
    }

}


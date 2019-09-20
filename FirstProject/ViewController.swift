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
    
    let diceeImages = ["dice1","dice2","dice3","dice4","dice5","dice6"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.

     updateImagesRundomly()

    }

    @IBAction func actinBtn(_ sender: UIButton) {
        
        updateImagesRundomly()
        
    }

    func updateImagesRundomly()  {
        randomDiceIndex1 = Int(arc4random_uniform(6))
        randomDiceIndex2 = Int(arc4random_uniform(6))
        
        
        firtBall.image = UIImage(named: diceeImages[randomDiceIndex1])
        secondBall.image = UIImage(named: diceeImages[randomDiceIndex2])
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?) {
        print(randomDiceIndex1,randomDiceIndex2)

    }
}


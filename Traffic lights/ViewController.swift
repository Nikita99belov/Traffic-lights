//
//  ViewController.swift
//  Traffic lights
//
//  Created by Sofi on 26.01.2021.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var redLight: UIView!
    @IBOutlet weak var yelowLight: UIView!
    @IBOutlet weak var greenLight: UIView!
    
    @IBOutlet weak var battonLight: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLight.alpha = 0.3
        yelowLight.alpha = 0.3
        greenLight.alpha = 0.3
        redLight.layer.cornerRadius = redLight.frame.width / 2
        yelowLight.layer.cornerRadius = yelowLight.frame.width / 2
        greenLight.layer.cornerRadius = greenLight.frame.width / 2
        
      
        
        
        
        
    }


    @IBAction func battonLightAction() {
        
        if redLight.alpha < 0.3001 {
            redLight.alpha = 1
            yelowLight.alpha = 0.3
            greenLight.alpha = 0.3
            battonLight.setTitle("Next", for: .normal)
            
        } else if redLight.alpha == 1 {
            redLight.alpha = 0.301
            yelowLight.alpha = 1
            greenLight.alpha = 0.3
            battonLight.setTitle("Next", for: .normal)
            
        } else if yelowLight.alpha == 1   {
            redLight.alpha = 0.301
            yelowLight.alpha = 0.3
            greenLight.alpha = 1
            battonLight.setTitle("Next", for: .normal)
        } else if greenLight.alpha == 1 {
            redLight.alpha = 0.3
            yelowLight.alpha = 0.3
            greenLight.alpha = 0.3
            battonLight.setTitle("Start", for: .normal)
        }
            

        
        
        
        
            
    }
    
}


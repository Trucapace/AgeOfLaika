//
//  ViewController.swift
//  AgeOfLaika
//
//  Created by David Blanck on 10/5/14.
//  Copyright (c) 2014 VidWare. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var ageInDogYearsLabel: UILabel!
    @IBOutlet weak var ageInHumanYearsTextFiels: UITextField!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertToDogYearsButtonPressed(sender: UIButton) {
    
        let ageInHumanYears = ageInHumanYearsTextFiels.text.toInt()!
        
        var ageInDogYears:Int
        if ageInHumanYears <= 2 {
            ageInDogYears = ageInHumanYears * 10
        }
        else {
            ageInDogYears = 20 + (ageInHumanYears - 2) * 4
        }
        
        
        ageInDogYearsLabel.hidden = false
        ageInDogYearsLabel.text = "\(ageInDogYears)" + " Human Years"
        ageInHumanYearsTextFiels.text = ""
        ageInHumanYearsTextFiels.resignFirstResponder()
        
        
    }

}


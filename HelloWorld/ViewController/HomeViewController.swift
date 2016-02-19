//
//  ViewController.swift
//  HelloWorld
//
//  Created by Rafael Ferreira on 2/18/16.
//  Copyright © 2016 Data Empire. All rights reserved.
//

import UIKit

/** A view controller to home view at storyboard: `Main`. */
class HomeViewController: UIViewController {
    
    @IBOutlet weak var ageTextField: UITextField!
    @IBOutlet weak var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        resultLabel.text = String();
    }
    
    @IBAction func sendAgeAction() {
        guard ageTextField.text?.characters.count > 0 else {
            resultLabel.text = "Your age must be typed"
            
            return
        }
        
        if let age = ageTextField.text {
            resultLabel.text = "Your age is \(age) years old"
        }
    }
    
    
}
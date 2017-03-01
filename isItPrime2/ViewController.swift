//
//  ViewController.swift
//  isItPrime2
//
//  Created by BishopHill on 2/28/17.
//  Copyright © 2017 Dumb Unicorn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var numInput: UITextField!
    
    @IBOutlet var resultLabel: UILabel!
    
    @IBAction func isItPrime(_ sender: AnyObject) {
        
        if let userEnteredString = numInput.text {
            
            let userEnteredInteger = Int(userEnteredString)
            
            if let number = userEnteredInteger {
                
                var isPrime = true
                
                if number == 1 {
                    
                    isPrime = false
                    
                }
                
                var i = 2
                
                while i < number {
                    if number % i == 0 {
                        isPrime = false
                    }
                    
                    i += 1
                }
                
                if isPrime {
                    
                    resultLabel.text = "\(number) is Prime!"
                    
                } else {
                    
                    resultLabel.text = "\(number) is not Prime."
                }
                
            } else {
                resultLabel.text = "Please enter a positive whole number"
            }
        }
        
    }
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


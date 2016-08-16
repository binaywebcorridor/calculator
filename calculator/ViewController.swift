//
//  ViewController.swift
//  calculator
//
//  Created by web corridor on 25/05/1938 Saka.
//  Copyright © 1938 Saka web corridor. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBOutlet weak var displayNumber: UILabel!
    
    var userIsInTheMiddleOfType = false
    
    @IBAction func digitNumber(sender: UIButton)
    {
        let myNumber = sender.currentTitle!
        if( userIsInTheMiddleOfType)
        {
            displayNumber.text =  displayNumber.text! + myNumber

        }else{
            displayNumber.text =  myNumber
        }
        userIsInTheMiddleOfType = true
        
    }
    
    @IBAction func pi(sender: UIButton) {
        userIsInTheMiddleOfType = false
        
        if let piNumber = sender.currentTitle
        {
            if piNumber == "π"
                {
                    displayNumber.text = String(M_PI)

            }
        }
    }
}


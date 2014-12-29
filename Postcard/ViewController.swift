//
//  ViewController.swift
//  Postcard
//
//  Created by Andy on 29/12/2014.
//  Copyright (c) 2014 Andy. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var MessageLabel: UILabel!
    
    @IBOutlet weak var EnterNameTextField: UITextField!
    
    @IBOutlet weak var EnterMessageTextField: UITextField!
    
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


    @IBAction func sendMailButtonPressed(sender: UIButton) {
        MessageLabel.hidden = false
        MessageLabel.text = EnterMessageTextField.text
        
        MessageLabel.textColor = UIColor.redColor()
        mailButton.setTitle( "Mail Sent", forState: UIControlState.Normal)
        
        EnterMessageTextField.text = ""
        EnterMessageTextField.resignFirstResponder()
        
    }

}


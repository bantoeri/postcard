//
//  ViewController.swift
//  Postcard
//
//  Created by Eric Banton on 10/09/2014.
//  Copyright (c) 2014 CIRESoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    @IBOutlet weak var enterMessageTexField: UITextField!
    @IBOutlet weak var mailButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
        // test comment 
    }


    @IBAction func sendMailButtonPressed(sender: UIButton) {
        
        //message label
        messageLabel.hidden = false
        messageLabel.text = enterMessageTexField.text
        messageLabel.textColor = UIColor.redColor()
        
        //name label
        nameLabel.hidden = false
        nameLabel.text = enterNameTextField.text
        nameLabel.textColor = UIColor.blueColor()
        
        enterNameTextField.text = ""
        enterNameTextField.resignFirstResponder()
        
        enterMessageTexField.text = ""
        enterMessageTexField.resignFirstResponder()
    
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
    }
}


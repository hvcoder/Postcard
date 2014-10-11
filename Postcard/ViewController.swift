//
//  ViewController.swift
//  Postcard
//
//  Created by Chris on 9/30/14.
//  Copyright (c) 2014 HiroicBeta. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageLabel: UILabel!
    @IBOutlet weak var nameField: UITextField!
    @IBOutlet weak var messageField: UITextField!
    @IBOutlet weak var mailButton: UIButton!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMail(sender: UIButton) {
        // Button actions!
        nameLabel.hidden = false;
        nameLabel.textColor = UIColor.blueColor();
        nameLabel.text = "To: " + nameField.text;
        nameField.text = "";
        messageLabel.hidden = false;
        messageLabel.text = messageField.text;
        messageField.text = "";
        messageField.resignFirstResponder();
        mailButton.setTitle("Sent!", forState: UIControlState.Normal);
    }


}


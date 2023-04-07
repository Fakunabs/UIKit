//
//  ViewController.swift
//  Hello
//
//  Created by Fakunabs on 06/04/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var loginlabel: UILabel!
    
    @IBOutlet weak var usernamelabel: UILabel!
    
    
    @IBOutlet weak var usernametextfield: UITextField!
    // hide the username text when the user is typing
    
    
    @IBOutlet weak var passwordlabel: UILabel!
    
    
    @IBOutlet weak var passWordTextField: UITextField! 

    @IBAction func loginButton(_ sender: Any) {
        switch (usernametextfield.text, passWordTextField.text) {
        case ("admin", "admin"):
            loginlabel.text = "Login Successful"
        case ("admin", _):
            loginlabel.text = "Invalid Password"
        case (_, "admin"):
            loginlabel.text = "Invalid Username"
        default:
            loginlabel.text = "Invalid Username and Password"
        }
        
    }
        override func viewDidLoad() {
            super.viewDidLoad()
            // Do any additional setup after loading the view.
        }
        
        
    }
    

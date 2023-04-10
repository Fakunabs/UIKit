//
//  ViewController.swift
//  Hello
//
//  Created by Fakunabs on 06/04/2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var usernameLabel: UIView!
    
    @IBOutlet weak var loginLabel: UILabel!
    
    @IBOutlet weak var usernametextfield: UITextField!
    // hide the username text when the user is typing
    
    @IBOutlet weak var passwordLabel: UILabel!
    
    
    
    @IBOutlet weak var passWordTextField: UITextField!
    
    @IBAction func loginButton(_ sender: Any) {
        switch (usernametextfield.text, passWordTextField.text) {
        case ("admin", "admin"):
            loginLabel.text = "Login Successful"
        case ("admin", _):
            loginLabel.text = "Invalid Password"
        case (_, "admin"):
            loginLabel.text = "Invalid Username"
        default:
            loginLabel.text = "Invalid Username and Password"
            
        }
        print("Done")
        // hide the keyboard when the user is done typing
        usernametextfield.resignFirstResponder()
        passWordTextField.resignFirstResponder()
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        print("viewdidload")
        
        // Do any additional setup after loading the view.
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        print("viewdidappear")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        print("viewwillappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewdiddisappear")
    }
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewwilldisappear")
    }
    
}


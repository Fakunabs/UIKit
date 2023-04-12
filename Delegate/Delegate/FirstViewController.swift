//
//  FirstViewController.swift
//  Delegate
//
//  Created by Fakunabs on 10/04/2023.
//

import UIKit


class FirstViewController: UIViewController /* dataSendToSecondController */ {
    
    @IBOutlet weak var textField: UITextField!
    
    
    @IBAction func navigateToSecondViewAction(_ sender: UIButton) {
        
        let vc = SecondViewController()
        vc.closure = {text in
        self.textField.text = text
        }
        
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    @IBAction func navigateToThirdViewAction(_ sender: UIButton) {
        let vc = FourthViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        title = "First View Controller"
    }
    
}

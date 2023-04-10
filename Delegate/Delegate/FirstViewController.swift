//
//  FirstViewController.swift
//  Delegate
//
//  Created by Fakunabs on 10/04/2023.
//

import UIKit

class FirstViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        title = "First View Controller"
    }
    
    @IBOutlet weak var textField: UITextField!
    
    
    @IBAction func navigateToSecondViewAction(_ sender: UIButton) {
        let vc = SecondViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    
}

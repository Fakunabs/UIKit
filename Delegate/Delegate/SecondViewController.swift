//
//  SecondViewController.swift
//  Delegate
//
//  Created by Fakunabs on 10/04/2023.
//

import UIKit

protocol dataSendToSecondController {

    func data(text: String)
}

class SecondViewController: UIViewController {
    
    var delegate: dataSendToSecondController?
    
    var receiveddata: String?
    
    @IBOutlet weak var textFieldViewSecond: UITextField!
    

    @IBAction func returnButtonSecondView(_ sender: UIButton) {
        // click on the button to return to the first view
        delegate?.data(text: textFieldViewSecond.text!)
        
        self.navigationController?.popViewController(animated: true)
        
        
    }
    
    
    
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = "Second View Controller"
        textFieldViewSecond.text = receiveddata
    }
}

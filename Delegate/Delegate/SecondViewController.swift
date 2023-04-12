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

    var closure: ((String) -> ())?
    
    var receiveddata: String?
    
    @IBOutlet weak var textFieldViewSecond: UITextField!

    @IBAction func returnButtonSecondView(_ sender: UIButton) {
        
        guard let text = textFieldViewSecond.text else {return}
        closure?(text)
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        title = "Second View Controller"
        textFieldViewSecond.text = receiveddata
    }
}

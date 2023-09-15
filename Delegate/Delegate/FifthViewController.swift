//
//  FifthViewController.swift
//  Delegate
//
//  Created by Fakunabs on 13/04/2023.
//


import UIKit

protocol dataSendToFourthView {
    
    func data(text: String, indexPath: IndexPath)
}

class FifthViewController: UIViewController {
    
    var delegate: dataSendToFourthView?
    var indexPath: IndexPath?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Fifth View Controller"
    }
    
    
    @IBOutlet weak var textFieldFifthView: UITextField!
    
    @IBAction func saveAction(_ sender: UIButton) {
        guard let indexPath = indexPath else { return }
        delegate?.data(text: textFieldFifthView.text!, indexPath: indexPath) // luôn luôn có giá trị
        self.navigationController?.popViewController(animated: true)

    }
    
}

// if let nó kiêm tra điều kiện có nil hay không. Nếu nil thì sẽ thực thi câu lệnh trong dấu ngoặc
// guard let 

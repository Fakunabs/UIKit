//
//  FourthViewController.swift
//  Delegate
//
//  Created by Fakunabs on 12/04/2023.
//

import UIKit

class FourthViewController: UIViewController {
    @IBOutlet weak var myTableView: UITableView!
    
    var image:[String] = ["Test"]
    var imageTest:[String] = ["test"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Fourth View Controller"
        
        myTableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        myTableView.dataSource = self
        myTableView.delegate = self
        
    }
    
    
}
// MARK: - Table view
extension FourthViewController:UITableViewDataSource, UITableViewDelegate {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return image.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.myImage.image = UIImage(named: imageTest[indexPath.row])
        cell.myLabel.text = image[indexPath.row]
        return cell
    }
}

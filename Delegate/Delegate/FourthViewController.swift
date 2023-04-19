//
//  FourthViewController.swift
//  Delegate
//
//  Created by Fakunabs on 12/04/2023.
//

import UIKit

class FourthViewController: UIViewController {
    
    @IBOutlet weak var myTableView: UITableView!
    
    struct Meme {
        let imageName: String
        var title: String
    }
    
    var table: [Meme] = [
        Meme(imageName: "test", title: "Test"),
        Meme(imageName: "cat", title: "Cat"),
        Meme(imageName: "dog", title: "Dog"),
        Meme(imageName: "fire", title: "Fire"),
        Meme(imageName: "look", title: "Look"),
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Fourth View Controller"
        myTableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
        myTableView.dataSource = self
        myTableView.delegate = self
    }
}
// MARK: - Table view
extension FourthViewController: UITableViewDataSource, UITableViewDelegate, dataSendToFourthView
{    
    func data(text: String, indexPath: IndexPath) {
        table[indexPath.row].title = text
        myTableView.reloadData()
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return table.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = myTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
        cell.myImage.image = UIImage(named: table[indexPath.row].imageName)
        cell.myLabel.text = table[indexPath.row].title
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {        
        let vc = FifthViewController()
        vc.delegate = self
        vc.indexPath = indexPath
        self.navigationController?.pushViewController(vc, animated: true)
    }
        
//    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
//        return 300
//    }
}   

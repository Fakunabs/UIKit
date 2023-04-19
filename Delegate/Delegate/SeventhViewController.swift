//
//  SeventhViewController.swift
//  Delegate
//
//  Created by Fakunabs on 16/04/2023.
//

import UIKit

class SeventhViewController: UIViewController {
    
    var imageWidth = ""
    var imageHeight = ""
    
    @IBOutlet weak var urlSessionImage: UIImageView!
    
    @IBAction func changeImageAction(_ sender: UIButton) {
        let API = "https://picsum.photos/" + imageWidth +  "/" + imageHeight
        
        guard let apiURL = URL(string: API) else {
            fatalError("someError") // test cho nay
        }
        
        let session = URLSession(configuration: .default)
        
        let task = session.dataTask(with: apiURL) { ( data, response, error) in
            guard let data = data, error == nil else {return}
            DispatchQueue.main.async {
                self.urlSessionImage.image = UIImage(data: data)
            }
        }
        task.resume()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Seventh View Controller"

        let height = urlSessionImage.frame.height
        self.imageHeight = String(format: "%.0f", Double(height))
        let width = urlSessionImage.frame.width
        self.imageWidth = String(format: "%.0f", Double(width))
    }
}

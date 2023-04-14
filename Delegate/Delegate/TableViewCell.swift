//
//  TableViewCell.swift
//  Delegate
//
//  Created by Fakunabs on 12/04/2023.
//

import UIKit

class TableViewCell: UITableViewCell  {
    
    @IBOutlet weak var myImage: UIImageView!
    
    @IBOutlet weak var myLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}

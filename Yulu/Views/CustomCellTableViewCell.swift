//
//  CustomCellTableViewCell.swift
//  Yulu
//
//  Created by Amit Kumar on 07/01/20.
//  Copyright © 2020 Amit. All rights reserved.
//

import UIKit

class CustomCellTableViewCell: UITableViewCell {
    @IBOutlet weak var firstName: UILabel!
    
    @IBOutlet weak var id: UILabel!
    @IBOutlet weak var lastName: UILabel!
    
    var identifier = "customCell"
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configureCell(with data: Contact) {
        self.firstName.text = data.name
        self.lastName.text = data.lastname
        self.id.text = "\(data.id)"
    }

}

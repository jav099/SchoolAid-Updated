//
//  ItemTableViewCell.swift
//  SchoolAid
//
//  Created by Contreras Tenorio Javier on 5/26/17.
//  Copyright © 2017 Contreras Tenorio Javier. All rights reserved.
//

import UIKit

class ItemTableViewCell: UITableViewCell {

    @IBOutlet weak var itemLabel: UILabel!
      
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
}

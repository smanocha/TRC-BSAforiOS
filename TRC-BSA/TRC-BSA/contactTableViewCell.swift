//
//  contactTableViewCell.swift
//  TRC-BSA
//
//  Created by Sugam Manocha on 5/3/17.
//  Copyright © 2017 Sugam Manocha. All rights reserved.
//

import UIKit

class contactTableViewCell: UITableViewCell {
    //MARK: Properties
    @IBOutlet weak var nameLabel: UILabel!    
    @IBOutlet weak var emailLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

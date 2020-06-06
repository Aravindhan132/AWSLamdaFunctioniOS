//
//  PlayerCell.swift
//  SAMPLEAWSAPP
//
//  Created by aravind-zt336 on 06/06/20.
//  Copyright © 2020 ZENMINDS. All rights reserved.
//

import UIKit

class PlayerCell: UITableViewCell {

    
    @IBOutlet var firstNameLabel: UILabel!
    @IBOutlet var lastNameLabel: UILabel!
    @IBOutlet var discriptionLabel: UILabel!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        self.selectionStyle = .none
    }

    func setData(model: Player?) {
        self.firstNameLabel.text = model?.firstName
        self.lastNameLabel.text = model?.lastName
        self.discriptionLabel.text = model?.playerDescription
    }
    
}

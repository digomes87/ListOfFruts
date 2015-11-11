//
//  MyCellTableViewCell.swift
//  ListOfFruts
//
//  Created by Diego Gomes on 11/11/2015.
//  Copyright © 2015 Nylon. All rights reserved.
//

import UIKit

class MyCellTableViewCell: UITableViewCell {
    @IBOutlet var imageCell: UIImageView!
    @IBOutlet var labelCell: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

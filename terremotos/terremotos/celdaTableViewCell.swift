//
//  celdaTableViewCell.swift
//  terremotos
//
//  Created by Asier on 25/2/18.
//  Copyright © 2018 grupoA. All rights reserved.
//

import UIKit

class celdaTableViewCell: UITableViewCell {

    @IBOutlet weak var mag: UILabel!
    @IBOutlet weak var lugar: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

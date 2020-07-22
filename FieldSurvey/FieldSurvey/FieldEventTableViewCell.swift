//
//  FieldEventTableViewCell.swift
//  FieldSurvey
//
//  Created by Joe Sahrmann on 7/21/20.
//  Copyright © 2020 Joe Sahrmann. All rights reserved.
//

import UIKit

class FieldEventTableViewCell: UITableViewCell {

    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var speciesLabel: UILabel!
    @IBOutlet weak var kingdomImageView: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}

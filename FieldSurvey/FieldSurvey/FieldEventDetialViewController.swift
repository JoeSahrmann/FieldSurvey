//
//  FieldEventDetialViewController.swift
//  FieldSurvey
//
//  Created by Joe Sahrmann on 7/21/20.
//  Copyright © 2020 Joe Sahrmann. All rights reserved.
//

import UIKit

class FieldEventDetialViewController: UIViewController {
    var fieldEvent: FieldObservationz?
    var dateFormatter = DateFormatter()
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var kingdomIconImageView: UIImageView!
    @IBOutlet weak var dateLabel: UILabel!
    @IBOutlet weak var speciesLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        
        kingdomIconImageView.image = fieldEvent?.kingdom.image
        speciesLabel.text = fieldEvent?.species
        descriptionLabel.text = fieldEvent?.description
        if let date = fieldEvent?.date{
            dateLabel.text = dateFormatter.string(from: date)
        }else {
            dateLabel.text = ""
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }


}

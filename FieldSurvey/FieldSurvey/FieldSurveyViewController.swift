//
//  FieldSurveyViewController.swift
//  FieldSurvey
//
//  Created by Joe Sahrmann on 7/21/20.
//  Copyright © 2020 Joe Sahrmann. All rights reserved.
//

import UIKit

class FieldSurveyViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var FieldObservationTabelView: UITableView!
   
    let dateFormatter = DateFormatter()
    let fieldObv = FieldObservationsJSONLoader.load(fileName: "field_observations")
   
    override func viewDidLoad() {
        super.viewDidLoad()
        dateFormatter.dateStyle = .medium
        dateFormatter.timeStyle = .medium
        print(fieldObv.count)
        // Do any additional setup after loading the view.
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return fieldObv.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "fieldSurveyCell", for: indexPath)
        if let cell = cell as? FieldEventTableViewCell{
            let fieldEvent = fieldObv[indexPath.row]
            cell.kingdomImageView.image = fieldEvent.kingdom.image
            cell.speciesLabel.text = fieldEvent.species
            cell.dateLabel.text = dateFormatter.string(from: fieldEvent.date)
            print(fieldEvent.species)
        }
        return cell
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination =  segue.destination as? FieldEventDetialViewController,
            let row = FieldObservationTabelView.indexPathForSelectedRow?.row{
                destination.fieldEvent = fieldObv[row]
        }
    }
    
    
    
}

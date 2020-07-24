//
//  FieldObservationz.swift
//  FieldSurvey
//
//  Created by Joe Sahrmann on 7/21/20.
//  Copyright © 2020 Joe Sahrmann. All rights reserved.
//

import Foundation
struct FieldObservationz {
    let kingdom: Animal
    let species: String
    let description: String
    let date: Date
    
    init(kingdom: Animal ,species: String, description: String, date: Date){
        self.species = species
        self.kingdom = kingdom
        self.description = description
        self.date = date
    
    }
    init?(kingdomName: String, species: String, description: String, date: Date){
       if let kingdom = Animal(rawValue: kingdomName){
            self.init(kingdom: kingdom, species: species, description: description, date: date)
        } else {
            return nil
               }
    }
}

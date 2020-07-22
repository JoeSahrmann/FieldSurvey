//
//  FieldObservationsJSONParser.swift
//  FieldSurvey
//
//  Created by Joe Sahrmann on 7/21/20.
//  Copyright © 2020 Joe Sahrmann. All rights reserved.
//

import Foundation
class FieldObservationsJSONParser {
    static let dateFormatter = DateFormatter()
    
    class func parse(_ data: Data) -> [FieldObservationz]{
        var fieldObservation = [FieldObservationz]()
        dateFormatter.dateFormat = "YYYY-MM-dd HH:mm"
        
        if let json = try? JSONSerialization.jsonObject(with: data, options: []),
            let root = json as? [String:Any],
            let status = root["status"] as? String,
            status == "ok"{
            
            if let observation = root["observations"] as? [Any]{
                for obv in observation {
                    if let obv = obv as? [String: String] {
                        if let kingdomName = obv["classification"],
                            let species = obv["title"],
                            let descritpion = obv["description"],
                            let dateString = obv["date"],
                            let date = dateFormatter.date(from: dateString) {

                                if let fieldObservations = FieldObservationz(kingdomName: kingdomName, species: species, description: descritpion, date: date) {
                                    fieldObservation.append(fieldObservations)
                            }
                        }
                    }
                }
            }
        }
        return fieldObservation
    }
}

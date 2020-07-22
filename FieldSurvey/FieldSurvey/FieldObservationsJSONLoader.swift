//
//  FieldObservationsJSONLoader.swift
//  FieldSurvey
//
//  Created by Joe Sahrmann on 7/21/20.
//  Copyright © 2020 Joe Sahrmann. All rights reserved.
//

import Foundation

class FieldObservationsJSONLoader{
    
    class func load(fileName: String) -> [FieldObservationz] {
        var observation = [FieldObservationz]()
        if let path = Bundle.main.path(forResource: fileName, ofType: "json"),
            let data = try? Data(contentsOf: URL(fileURLWithPath: path)){
            observation = FieldObservationsJSONParser.parse(data)
    }
return observation
}
}

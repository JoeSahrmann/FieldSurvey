//
//  Animal.swift
//  FieldSurvey
//
//  Created by Joe Sahrmann on 7/21/20.
//  Copyright © 2020 Joe Sahrmann. All rights reserved.
//

import UIKit

enum Animal: String{
    case plant
    case amphibian
    case bird
    case fish
    case insect
    case mammal
    case reptile
    
    var image: UIImage?{
        return UIImage(named: self.rawValue + "Icon")
    }
}

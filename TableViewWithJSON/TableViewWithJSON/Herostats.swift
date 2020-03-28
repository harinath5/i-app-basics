//
//  Herostats.swift
//  TableViewWithJSON
//
//  Created by Naresh Nallamsetty on 23/02/20.
//  Copyright © 2020 Axiom. All rights reserved.
//

import Foundation
struct HeroStats:Decodable {
    var localized_name:String
    var primary_attr:String
    var attack_type:String
    var legs:Int
    var img:String
    
    
}

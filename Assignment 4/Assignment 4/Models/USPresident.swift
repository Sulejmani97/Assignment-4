//
//  Presidents.swift
//  Assignment 4
//
//  Created by user225222 on 11/3/22.
//

import Foundation

struct USPresident: Decodable {
    var name = ""
    var number = ""
    var startDate = ""
    var endDate = ""
    var nickName = ""
    var politicalParty = ""
    
    private enum CodingKeys: String, CodingKey {
        case name = "Name"
        case number = "Number"
        case startDate = "Start Date"
        case endDate = "End Date"
        case nickName = "Nickname"
        case politicalParty = "Political Party"
    }
}

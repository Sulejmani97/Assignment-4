//
//  Presidents.swift
//  Assignment 4
//
//  Created by user225222 on 11/3/22.
//

import Foundation

struct USPresident: Decodable {
    var name: String
    var number: String
    var startDate: String
    var endDate: String
    var nickName: String
    var politicalParty: String
    
    private enum CodingKeys: String, CodingKey {
        case name = "Name"
        case number = "Number"
        case startDate = "Start Date"
        case endDate = "End Date"
        case nickName = "Nickname"
        case politicalParty = "Political Party"
    }
}

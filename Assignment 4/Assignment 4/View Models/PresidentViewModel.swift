//
//  PresidentViewModel.swift
//  Assignment 4
//
//  Created by user225222 on 11/3/22.
//

import Foundation

struct PresidentViewModel {
    var president: USPresident
    
    var name: String {
        return president.name
    }
    
    var number: String {
        return president.number
    }
    
    var startDate: String {
        return president.startDate
    }
    
    var endDate: String {
        return president.endDate
    }
    
    var politicalParty: String {
        return president.politicalParty
    }
}

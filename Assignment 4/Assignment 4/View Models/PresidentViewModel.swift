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
    
    static var `default`: PresidentViewModel {
        let president = USPresident(name: "George Washington", number: "1", startDate: "April 30, 1789", endDate: "March 3, 1797", nickName: "Father of His Country", politicalParty: "None")
        return PresidentViewModel(president: president)
    }
    
    
}

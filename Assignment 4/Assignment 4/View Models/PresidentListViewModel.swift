//
//  ViewModel.swift
//  Assignment 4
//
//  Created by user225222 on 11/3/22.
//

import Foundation

class PresidentListViewModel: ObservableObject {
    
    @Published var presidents: [PresidentViewModel] = []
    
    func loadPropertyList() {
        guard let path = Bundle.main.path(forResource: "presidents",
        ofType: "plist"), let xml =
                FileManager.default.contents(atPath: path) else {
            fatalError("Unable to access property list")
        }
        
        do {
            var presidents = try PropertyListDecoder().decode([USPresident].self, from: xml)
            
            self.presidents = presidents.map(PresidentViewModel.init)
            
        } catch {
            fatalError("Unable to decode property list")
        }
        
        }
        
       
    }


//
//  PresidentCell.swift
//  Assignment 4
//
//  Created by Destin Sulejmani
//

import SwiftUI

struct PresidentCell: View {
    
    //create president view
    var president: PresidentViewModel
    
    var body: some View {
        //formatting for how presidents are displayed
        VStack(alignment: .leading) {
            Text(president.name)
                .font(.headline)
                .fontWeight(.heavy)
            Text(president.politicalParty)
                .font(.subheadline)
                
        }
    }
}

struct PresidentCell_Previews: PreviewProvider {
    static var previews: some View {
        PresidentCell(president: PresidentViewModel.default)
    }
}

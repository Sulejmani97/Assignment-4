//
//  PresidentCell.swift
//  Assignment 4
//
//  Created by user225222 on 11/4/22.
//

import SwiftUI

struct PresidentCell: View {
    
    var president: PresidentViewModel
    
    var body: some View {
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

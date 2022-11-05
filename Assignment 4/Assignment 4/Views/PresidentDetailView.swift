//
//  PresidentDetailView.swift
//  Assignment 4
//
//  Created by user225222 on 11/4/22.
//

import SwiftUI

struct PresidentDetailView: View {
    
    var president: PresidentViewModel
    
    var numberFormat: String {
        let formatter = NumberFormatter()
        formatter.numberStyle = .ordinal
        
        let presidentNumber = Double(president.number)
        
        return formatter.string(from: NSNumber(value: presidentNumber!))!
        
            }
   
    
    var body: some View {
        VStack(spacing: 16) {
            Text(president.name)
                .padding()
                .font(.largeTitle)
                .fontWeight(.heavy)
                .multilineTextAlignment(.center)
            
            Text("\(numberFormat) President of the United States")
                    .bold()
            
            HStack {
                Text("(\(president.startDate)")
                    .italic()
                Text("to")
                    .italic()
                Text("\(president.endDate))")
                    .italic()
            }
            Image("seal")
            
            Text("Nickname")
                .bold()
            
            Text(president.president.nickName)
            
            Text("Political Party")
                .bold()
            
            Text(president.politicalParty)
            
            Spacer()
        }
    }
}

struct PresidentDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PresidentDetailView(president: PresidentViewModel.default)
    }
}

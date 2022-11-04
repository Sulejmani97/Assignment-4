//
//  ContentView.swift
//  Assignment 4
//
//  Created by user225222 on 11/3/22.
//

import SwiftUI

struct PresidentListView: View {
    
    @StateObject private var PresidentListVM = PresidentListViewModel()
    
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(PresidentListVM
                    .presidents, id: \.name) {
                        presidentVM in
                        Text(presidentVM.name)
                        }
            }
            .listStyle(.plain)
            .navigationTitle("Presidents")
            .navigationBarTitleDisplayMode(.inline)
        }
        .onAppear {
            PresidentListVM.loadPropertyList()
        }
        
    }
}

struct PresidentListView_Previews: PreviewProvider {
    static var previews: some View {
        PresidentListView()
    }
}

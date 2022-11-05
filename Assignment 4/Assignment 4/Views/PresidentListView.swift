//
//  PresidentListView
//  Assignment 4
//
//  Created by Destin Sulejmani
//

import SwiftUI

struct PresidentListView: View {
    
    @StateObject private var PresidentListVM = PresidentListViewModel()
    
    
    var body: some View {
        NavigationStack {
            
            // Lists all the presidents in alphabetical order
            List {
                ForEach(PresidentListVM
                    .presidents, id: \.name) {
                        presidentVM in
                        NavigationLink(destination: PresidentDetailView(president: presidentVM)) {
                            PresidentCell(president: presidentVM)
                        }
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

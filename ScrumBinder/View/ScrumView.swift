//
//  ScrumView.swift
//  ScrumBinder
//
//  Created by Haider Ali on 31/10/2022.
//

import SwiftUI

struct ScrumView: View {
    
    let scrums: [DailyScrum]
    
    var body: some View {
        List {
            ForEach(scrums, id: \.id) { scrum in
                NavigationLink(destination: DetailView(scrum: scrum)) {
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
        }
        .navigationTitle("Daily Scrums")
        .toolbar {
            Button(action: {}) {
                Image(systemName: "plus")
            }
            .accessibilityLabel("New Scrum")
        }
    }
}

struct ScrumView_Previews: PreviewProvider {
    
    static var scrums = DailyScrum.sampleData
    
    static var previews: some View {
        NavigationView {
            ScrumView(scrums: scrums)
        }
    }
}

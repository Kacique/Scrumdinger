//
//  ScrumsView.swift
//  Scrumdinger
//
//  Created by William on 7/26/23.
//

import SwiftUI

struct ScrumsView: View {
    
    //let scrums: [DailyScrum]
    @Binding var scrums: [DailyScrum]
    
    var body: some View {
        // We have an id so need to put in List
        NavigationStack{
            List($scrums){ $scrum in
                NavigationLink(destination: DetailView(scrum: $scrum)){
                    CardView(scrum: scrum)
                }
                .listRowBackground(scrum.theme.mainColor)
            }
            .navigationTitle("Daily Scrums")
            .toolbar{
                Button(action: {}){
                    Image(systemName: "plus")
                }
                .accessibilityLabel("New Scrum")
            }
        }
    }
}

struct ScrumsView_Previews: PreviewProvider {
    static var previews: some View {
        ScrumsView(scrums: .constant(DailyScrum.sampleData))
    }
}

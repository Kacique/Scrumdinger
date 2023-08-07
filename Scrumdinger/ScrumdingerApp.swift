//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by William on 7/24/23.
//

import SwiftUI

@main
struct ScrumdingerApp: App {
    
    @State private var scrums = DailyScrum.sampleData
    
    var body: some Scene {
        WindowGroup {
            //ScrumsView(scrums: DailyScrum.sampleData)
            ScrumsView(scrums: $scrums)
        }
    }
}

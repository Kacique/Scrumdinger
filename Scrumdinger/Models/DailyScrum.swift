//
//  DailyScrum.swift
//  Scrumdinger
//
//  Created by William on 7/25/23.
//

import Foundation

struct DailyScrum: Identifiable {
    var id: UUID
    var title: String
    var attendees: [Attendee]
    var lengthInMinutes: Int
    var theme: Theme
    
    init(id: UUID = UUID(), title: String, attendees: [String], lengthInMinutes: Int, theme: Theme) {
        self.id = id
        self.title = title
        /*
         map(_:) creates a new collection by iterating over and applying a transformation to
         each element in an existing collection.
         */
        self.attendees = attendees.map{Attendee(name: $0)}
        self.lengthInMinutes = lengthInMinutes
        self.theme = theme
    }
}


//Extensions allow you to add additional functionality to a type after its original declaration.
/**
 The purpose of the extension in this code is not to initialize individual instances of DailyScrum but to provide sample data —
 an array of pre-configured DailyScrum instances.
 The sampleData is a static property that provides multiple, different DailyScrum instances at once. It's a way of providing
 test data for use throughout your program.
 **/
/**
 In this extension, a static constant property sampleData of type [DailyScrum] (an array of DailyScrums) is created and assigned
 an array of three DailyScrum instances.
 This sample data could be used, for example, for testing or prototyping before the app has access to real data. The static sampleData
 property allows you to access this sample data from anywhere in your code using DailyScrum.sampleData without having to instantiate(init)
 DailyScrum.
 */
extension DailyScrum{
    static let sampleData: [DailyScrum] =
    [
        DailyScrum(title: "Design",
                   attendees: ["Cathy", "Daisy", "Simon", "Jonathan"],
                   lengthInMinutes: 10,
                   theme: .yellow),
        
        DailyScrum(title: "App Dev",
                   attendees: ["Katie", "Gray", "Euna", "Luis", "Darla"],
                   lengthInMinutes: 5,
                   theme: .orange),
        
        DailyScrum(title: "Web Dev",
                   attendees: ["Chella", "Chris", "Eden", "Karla", "Aga"],
                   lengthInMinutes: 5,
                   theme: .poppy)
    ]
}

extension DailyScrum{
    struct Attendee: Identifiable {
        let id: UUID
        var name: String
        
        init(id: UUID = UUID(), name: String){
            self.id = id
            self.name = name
        }
    }
}

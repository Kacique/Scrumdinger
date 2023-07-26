//
//  TrailingIcon.swift
//  Scrumdinger
//
//  Created by William on 7/25/23.
//

import SwiftUI

struct TrailingIcon: LabelStyle {
    /**
     The compiler generates an error because this structure doesn’t meet the requirements of the LabelStyle protocol.
     
     The LabelStyle protocol defines a single method called makeBody(configuration: Configuration) -> some View,
     which is used to create the body of a label. The TrailingIcon struct overrides the makeBody method to return a HStack
     view with the title and icon of the label.
     
     Overall, this code defines a custom label style that positions the label's icon trailing (to the right of) its title. 
     */
    func makeBody(configuration: Configuration) -> some View {
        HStack{
            configuration.title
            configuration.icon
        }
    }
}

extension LabelStyle where Self == TrailingIcon{
    static var trailingIconStyle: Self { Self() }
}

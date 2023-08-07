//
//  Theme.swift
//  Scrumdinger
//
//  Created by William on 7/25/23.
//

import SwiftUI

enum Theme: String, CaseIterable, Identifiable{
    
    case bubblegum
    case buttercup
    case indigo
    case lavender
    case magenta
    case navy
    case orange
    case oxblood
    case periwinkle
    case poppy
    case purple
    case seafoam
    case sky
    case tan
    case teal
    case yellow
    
    /**
     Add a Color property named accentColor that returns .black or .white depending on the value of self, meaning the Theme enum itself.
     */
    var accentColor: Color{
        switch self{
        case .bubblegum, .buttercup, .lavender, .orange, .periwinkle, .poppy, .seafoam, .sky, .tan, .teal, .yellow:
            return .black
        case .indigo, .magenta, .navy, .oxblood, .purple:
            return .white
        }
    }
    
    /**
     In Swift, an enum can have raw values, which are prepopulated values. They can be strings, characters, or any of the integer or floating-point number types.
     Each raw value must be unique within its enumeration declaration.
     
     In your example, Theme is an enumeration with a raw value type of String. This means that each case of the enum has an associated string value.
     By default, the raw value of each case will be the string equivalent of the case name. For instance, the raw value of .bubblegum is the string "bubblegum".
     You could specify different raw values if you wanted, but in this case, it's using the defaults.

     The line Color(rawValue) is creating a new Color using the raw value of the enum. The Color structure in SwiftUI can create a color from a string that
     represents a color name. Therefore, Color(rawValue) creates a Color instance from the raw string value associated with each case of the Theme enum.

     For example, Theme.bubblegum.mainColor would create a color with the string "bubblegum", and Theme.indigo.mainColor would create a color with the string "indigo".
     */
    var mainColor: Color{
        Color(rawValue)
    }
    
    var name: String{
        rawValue.capitalized
    }
    
    var id: String{
        name
    }
    
}

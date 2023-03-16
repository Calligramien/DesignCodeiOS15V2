//
//  Suggestion.swift
//  DesignCodeiOS15V2
//
//  Created by Damien Gautier on 16/03/2023.
//

import SwiftUI

struct Suggestion: Identifiable {
    
    let id = UUID()
    var text: String
}

var suggestions = [
    Suggestion(text: "SwiftUI"),
    Suggestion(text: "React"),
    Suggestion(text: "Design")
]

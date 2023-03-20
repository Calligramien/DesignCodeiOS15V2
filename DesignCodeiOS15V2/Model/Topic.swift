//
//  Topic.swift
//  DesignCodeiOS15V2
//
//  Created by Damien Gautier on 20/03/2023.
//

import SwiftUI

struct Topic: Identifiable {
    let id = UUID()
    var title: String
    var icon: String
}

var topics = [
    Topic(title: "iOS Development", icon: "iphone"),
    Topic(title: "UI Design", icon: "eyedropper"),
    Topic(title: "Web development", icon: "laptopcomputer")
]

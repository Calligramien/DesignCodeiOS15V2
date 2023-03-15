//
//  DesignCodeiOS15V2App.swift
//  DesignCodeiOS15V2
//
//  Created by Damien Gautier on 08/03/2023.
//

import SwiftUI

@main
struct DesignCodeiOS15V2App: App {
    
    @StateObject var model = Model()
    
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(model)
        }
    }
}

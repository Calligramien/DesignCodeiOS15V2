//
//  SearchView.swift
//  DesignCodeiOS15V2
//
//  Created by Damien Gautier on 16/03/2023.
//

import SwiftUI

struct SearchView: View {
    
    @State var text = ""
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            List {
                ForEach(courses.filter { $0.title.contains(text) || text == "" }) { item in
                    Text(item.title)
                }
            }
            .searchable(text: $text, placement: .navigationBarDrawer(displayMode: .always),
                        prompt: Text("SwiftUI, React, UI Design"))
            .navigationTitle("Search")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button(action: { dismiss.callAsFunction() }, label: { Text("Done").bold() })
                }
            }
        }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}

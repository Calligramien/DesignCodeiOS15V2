//
//  AccountView.swift
//  DesignCodeiOS15V2
//
//  Created by Damien Gautier on 09/03/2023.
//

import SwiftUI

struct AccountView: View {
    var body: some View {
        NavigationView {
            List {
                Section {
                    Text("Settings")
                    
                    Text("Billing")
                    
                    Text("Help")
                        
                }
                .listRowSeparatorTint(.blue)
                .listRowSeparator(.hidden)
            }
            .listStyle(.insetGrouped)
            .navigationTitle("Account")
        }
    }
}

struct AccountView_Previews: PreviewProvider {
    static var previews: some View {
        AccountView()
    }
}

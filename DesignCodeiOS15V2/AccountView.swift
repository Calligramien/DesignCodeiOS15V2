//
//  AccountView.swift
//  DesignCodeiOS15V2
//
//  Created by Damien Gautier on 09/03/2023.
//

import SwiftUI

struct AccountView: View {
    
    @State var isDeleted = false
    
    var body: some View {
        NavigationView {
            List {
                VStack(spacing: 8.0) {
                     Image(systemName: "person.crop.circle.fill.badge.checkmark")
                        .symbolVariant(.circle.fill)
                        .font(.system(size: 32))
                        .symbolRenderingMode(.palette)
                        .foregroundStyle(.blue, .blue.opacity(0.3))
                        .padding()
                        .background(Circle().fill(.ultraThinMaterial))
                        .background(
                            Image(systemName: "hexagon")
                                .symbolVariant(.fill)
                                .foregroundColor(.blue)
                                .font(.system(size: 200))
                                .offset(x: -50, y: -100 )
                    )
                    
                    Text("Damien")
                        .font(.title.weight(.semibold))
                    
                    HStack {
                        Image(systemName: "location")
                            .imageScale(.large)
                        
                        Text("France")
                            .foregroundColor(.secondary)
                    }
                }
                .frame(maxWidth: .infinity)
                .padding()
                
                Section {
                    NavigationLink(destination: ContentView()) {
                        Label("Settings", systemImage: "gear")
                    }
                    
                    NavigationLink { Text("Billing") } label: {
                        Label("Billing", systemImage: "creditcard")
                    }
                    
                    NavigationLink { ContentView() } label: {
                        Label("Help", systemImage: "questionmark")
                    }
                }
                .listRowSeparatorTint(.blue)
                .listRowSeparator(.hidden)
                
                Section {
                    if !isDeleted {
                        Link(destination: URL(string: "https://apple.com")!) {
                            HStack {
                                Label("Website", systemImage: "house")
                                Spacer()
                                Image(systemName: "link")
                                    .foregroundColor(.secondary)
                            }
                        }
                        .swipeActions(edge: .leading, allowsFullSwipe: true) {
                            Button(action: { isDeleted = true }) {
                                Label("Delete", systemImage: "trash")
                            }
                            .tint(.red)
                            
                            Button {} label: {
                                Label("Pin", systemImage: "pin")
                            }
                            .tint(.yellow)
                        }
                    }
                    
                    Link(destination: URL(string: "https://youtube.com")!) {
                        HStack {
                            Label("YouTube", systemImage: "tv")
                            Spacer()
                            Image(systemName: "link")
                                .foregroundColor(.secondary)
                        }
                    }
                }
                .listRowSeparator(.hidden)
            }
            .tint(.primary)
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

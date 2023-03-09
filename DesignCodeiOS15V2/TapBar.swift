//
//  TapBar.swift
//  DesignCodeiOS15V2
//
//  Created by Damien Gautier on 09/03/2023.
//

import SwiftUI

struct TapBar: View {
    var body: some View {
        ZStack(alignment: .bottom) {
            ContentView()
                .frame(maxWidth: .infinity, maxHeight: .infinity)
            HStack {
                Spacer()
                
                VStack(spacing: 0) {
                    Image(systemName: "house")
                        .symbolVariant(.fill)
                        .font(.body.bold())
                        .frame(width: 80, height: 29)
                    
                    Text("Learn Now")
                        .font(.caption2)
                }
                Spacer()
                
                VStack(spacing: 0)  {
                    Image(systemName: "magnifyingglass")
                        .symbolVariant(.fill)
                        .font(.body.bold())
                        .frame(width: 80, height: 29)
                    
                    Text("Explore")
                        .font(.caption2)
                }
                Spacer()
            }
            .padding(.top, 14)
            .frame(height: 88, alignment: .top)
            .background(.ultraThinMaterial, in:
                            RoundedRectangle(cornerRadius: 34, style: .continuous))
            .strokeStyle(cornerRadius: 34)
            .frame(maxHeight: .infinity, alignment: .bottom)
            .ignoresSafeArea()
        }
    }
}

struct TapBar_Previews: PreviewProvider {
    static var previews: some View {
        TapBar()
    }
}
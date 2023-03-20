//
//  ListRow.swift
//  DesignCodeiOS15V2
//
//  Created by Damien Gautier on 20/03/2023.
//

import SwiftUI

struct ListRow: View {
    
    var topic: Topic = topics[0]
    
    var body: some View {
        HStack(spacing: 16) {
            Image(systemName: topic.icon)
                .frame(width: 36, height: 36)
                .background(.ultraThinMaterial)
                .mask(Circle())
            
            Text(topic.title)
                .fontWeight(.semibold)
            
            Spacer()
        }
    }
}

struct ListRow_Previews: PreviewProvider {
    static var previews: some View {
        ListRow()
    }
}

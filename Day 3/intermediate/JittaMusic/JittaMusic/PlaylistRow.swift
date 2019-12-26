//
//  PlaylistRow.swift
//  JittaMusic
//
//  Created by Art on 25/12/2562 BE.
//  Copyright © 2562 Art. All rights reserved.
//

import SwiftUI

struct PlaylistRow: View {
    
    let title: String
    let subtitle: String
    
    var body: some View {
        HStack {
            Image(systemName: "music.note")
                .resizable()
                .scaledToFit()
                .frame(width: 32, height: 32)
                .padding()
                .background(Color.gray)
            
            VStack(alignment: .leading) {
                Text(self.title)
                Text(self.subtitle)
            }
            
            Spacer()
        }
    }
}

struct PlaylistRow_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistRow(title: "Jazz", subtitle: "by Chef Bird")
    }
}

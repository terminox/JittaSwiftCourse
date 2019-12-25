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
                .scaleEffect(1.5)
                .foregroundColor(Color(red: Double(178.0 / 255), green: Double(179.0 / 255), blue: Double(190.0 / 255)))
                .frame(width: 60, height: 60)
                .background(Color(red: Double(39.0 / 255), green: Double(40.0 / 255), blue: Double(41.0 / 255)))
            
            VStack(alignment: .leading) {
                Text(self.title)
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.bottom, 8)
                    .lineLimit(1)
                
                Text(self.subtitle)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .lineLimit(1)
            }.padding(.leading, 8)
            
            Spacer()
        }
    }
}

struct PlaylistRow_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(red: Double(17.0 / 255), green: Double(18.0 / 255), blue: Double(19.0 / 255))
            PlaylistRow(title: "test", subtitle: "by Yossa Bourne")
        }
    }
}

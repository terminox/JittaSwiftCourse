//
//  CreatePlaylistRow.swift
//  JittaMusic
//
//  Created by Art on 25/12/2562 BE.
//  Copyright © 2562 Art. All rights reserved.
//

import SwiftUI

struct CreatePlaylistRow: View {
    var body: some View {
        HStack {
            Image(systemName: "plus")
                .scaleEffect(1.5)
                .foregroundColor(.white)
                .frame(width: 60, height: 60)
                .background(Color(red: Double(39.0 / 255), green: Double(40.0 / 255), blue: Double(41.0 / 255)))
            
            VStack(alignment: .leading) {
                Text("Create playlist")
                    .font(.headline)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
            }.padding(.leading, 8)
            
            Spacer()
        }
    }
}

struct CreatePlaylistRow_Previews: PreviewProvider {
    static var previews: some View {
        ZStack {
            Color(red: Double(17.0 / 255), green: Double(18.0 / 255), blue: Double(19.0 / 255))
            CreatePlaylistRow()
        }
    }
}

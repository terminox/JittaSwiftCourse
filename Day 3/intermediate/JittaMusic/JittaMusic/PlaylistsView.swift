//
//  PlaylistsView.swift
//  JittaMusic
//
//  Created by Art on 25/12/2562 BE.
//  Copyright © 2562 Art. All rights reserved.
//

import SwiftUI

struct PlaylistsView: View {
    
    let playlists: [String] = [
        "Plan-D Show",
        "New Year Show",
        "Rock n' Roll",
        "Classic"
    ]
    
    var body: some View {
        GeometryReader { proxy in
            ScrollView {
                ForEach(self.playlists, id: \.self) { playlist in
                    PlaylistRow(title: playlist, subtitle: "by Art")
                }
            }
            .padding(.horizontal)
            .frame(width: proxy.size.width)
        }
    }
}

struct PlaylistsView_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistsView()
    }
}

//
//  PlaylistsView.swift
//  JittaMusic
//
//  Created by Art on 24/12/2562 BE.
//  Copyright © 2562 Art. All rights reserved.
//

import SwiftUI

struct PlaylistsView: View {
    
    @ObservedObject var playlistStore: PlaylistStore
    @State var isSheetPresented = false
    
    private var playlists: [Playlist] {
        playlistStore.playlists
    }
    
    var body: some View {
        ZStack {
            Color(red: Double(20.0 / 255), green: Double(20.0 / 255), blue: Double(20.0 / 255))
                .edgesIgnoringSafeArea(.top)
            
            
            VStack(alignment: .leading) {
                Text("Playlists")
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding([.top, .leading, .trailing])
                
                ScrollView {
                    Button(action: { self.isSheetPresented = true }) {
                        CreatePlaylistRow()
                    }
                        .padding([.top, .leading, .trailing])
                        .sheet(isPresented: self.$isSheetPresented) {
                            CreatePlaylistView(playlistStore: self.playlistStore)
                        }
                    
                    ForEach(playlists) { playlist in
                        NavigationLink(destination: PlaylistView(playlist: playlist)) {
                            PlaylistRow(title: playlist.name, subtitle: "by \(playlist.authorName)")
                        }
                            .padding([.leading, .trailing])
                    }
                }
            }
        }
    }
}

struct PlaylistsView_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistsView(playlistStore: PlaylistStore())
    }
}

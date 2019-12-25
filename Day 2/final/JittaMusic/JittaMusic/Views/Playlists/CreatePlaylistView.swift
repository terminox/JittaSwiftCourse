//
//  CreatePlaylistView.swift
//  JittaMusic
//
//  Created by Art on 25/12/2562 BE.
//  Copyright © 2562 Art. All rights reserved.
//

import SwiftUI

struct CreatePlaylistView: View {
    
    let playlistStore: PlaylistStore
    
    @State var text: String = ""
    @Environment(\.presentationMode) var presentationMode
    
    var body: some View {
        ZStack {
            Color(red: Double(20.0 / 255), green: Double(20.0 / 255), blue: Double(20.0 / 255))
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                HStack {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Text("Cancel")
                            .foregroundColor(.white)
                    }
                    
                    Spacer()
                    
                    Text("New Playlist")
                        .foregroundColor(.white)
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    Button(action: {
                        let playlist = Playlist(name: self.text)
                        self.playlistStore.playlists.append(playlist)
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Text("Done")
                            .foregroundColor(self.text.isEmpty ? .gray : .white)
                    }
                    .disabled(self.text.isEmpty)
                }
                .padding()
                .padding(.bottom, 0)
                
                HStack(alignment: .top) {
                    Image(systemName: "music.note")
                        .scaleEffect(1.5)
                        .foregroundColor(Color(red: Double(178.0 / 255), green: Double(179.0 / 255), blue: Double(190.0 / 255)))
                        .frame(width: 120, height: 120)
                        .background(Color(red: Double(39.0 / 255), green: Double(40.0 / 255), blue: Double(41.0 / 255)))
                        .cornerRadius(8)
                    
                    ZStack(alignment: .bottomLeading) {
                        if self.text.isEmpty {
                            Text("Playlist Name")
                                .foregroundColor(.gray)
                        }
                        
                        TextField("", text: self.$text)
                            .foregroundColor(.white)
                    }
                    .padding(.leading, 8)
                    .padding(.top)
                    
                    Spacer()
                }
                .padding()
                .padding(.top, 0)
                
                Spacer()
            }
        }
    }
}

struct CreatePlaylistView_Previews: PreviewProvider {
    static var previews: some View {
        CreatePlaylistView(playlistStore: PlaylistStore())
    }
}

//
//  PlaylistView.swift
//  JittaMusic
//
//  Created by Art on 25/12/2562 BE.
//  Copyright © 2562 Art. All rights reserved.
//

import SwiftUI

struct PlaylistView: View {
    
    let playlist: Playlist
    
    var body: some View {
        ZStack {
            Color(red: Double(20.0 / 255), green: Double(20.0 / 255), blue: Double(20.0 / 255))
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image(systemName: "music.note")
                    .scaleEffect(4)
                    .foregroundColor(Color(red: Double(178.0 / 255), green: Double(179.0 / 255), blue: Double(190.0 / 255)))
                    .frame(width: 150, height: 150)
                    .background(Color(red: Double(39.0 / 255), green: Double(40.0 / 255), blue: Double(41.0 / 255)))
                
                Text(playlist.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.top)
                
                Text("by \(playlist.authorName)")
                    .font(.subheadline)
                    .foregroundColor(.gray)
                    .padding(.top)
                
                Text("Lets find some songs for your playlist")
                    .font(.body)
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.top).padding(.top)
                
                Button(action: {}) {
                    Text("ADD SONGS ")
                        .font(.subheadline)
                        .fontWeight(.bold)
                        .padding([.leading, .trailing], 32)
                        .padding([.top, .bottom], 16)
                        .foregroundColor(Color(red: Double(20.0 / 255), green: Double(20.0 / 255), blue: Double(20.0 / 255)))
                        .background(Color.white.opacity(0.9))
                        .cornerRadius(24)
                }.padding(.top).padding(.top)
                
                Spacer()
            }.padding()
        }
    }
}

struct PlaylistView_Previews: PreviewProvider {
    static var previews: some View {
        let playlist = Playlist(name: "test")
        return PlaylistView(playlist: playlist)
    }
}

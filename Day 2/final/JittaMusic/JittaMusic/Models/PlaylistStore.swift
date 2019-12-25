//
//  PlaylistStore.swift
//  JittaMusic
//
//  Created by Art on 25/12/2562 BE.
//  Copyright © 2562 Art. All rights reserved.
//

import Foundation

class PlaylistStore: ObservableObject {
    @Published var playlists: [Playlist] = [
        Playlist(name: "My Rock Playlist"),
        Playlist(name: "Chill")
    ]
}

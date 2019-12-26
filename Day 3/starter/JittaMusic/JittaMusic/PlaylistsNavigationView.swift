//
//  PlaylistsNavigationView.swift
//  JittaMusic
//
//  Created by Art on 25/12/2562 BE.
//  Copyright © 2562 Art. All rights reserved.
//

import SwiftUI

struct PlaylistsNavigationView: View {
    var body: some View {
        NavigationView {
            PlaylistsView()
                .navigationBarTitle("Playlists")
        }
    }
}

struct PlaylistsNavigationView_Previews: PreviewProvider {
    static var previews: some View {
        PlaylistsNavigationView()
    }
}

//
//  MainTabView.swift
//  JittaMusic
//
//  Created by Art on 23/12/2562 BE.
//  Copyright © 2562 Art. All rights reserved.
//

import SwiftUI

struct MainTabView: View {
    
    let playlistStore = PlaylistStore()
    
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Image(systemName: "house")
                    Text("Radio")
                }
            
            NavigationView {
                PlaylistsView(playlistStore: playlistStore)
                    .navigationBarTitle("", displayMode: .inline)
            }
                .tabItem {
                    Image(systemName: "rectangle.stack.fill")
                    Text("Your Library")
                }
        }
        .accentColor(Color.white)
        .edgesIgnoringSafeArea(.top)
    }
    
    init() {
        UINavigationBar.appearance().barTintColor = .clear
        UITabBar.appearance().barTintColor = UIColor(displayP3Red: CGFloat(39.0 / 255), green: CGFloat(40.0 / 255), blue: CGFloat(41.0 / 255), alpha: 1)
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
    }
}

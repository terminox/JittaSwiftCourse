//
//  HomeView.swift
//  JittaMusic
//
//  Created by Art on 23/12/2562 BE.
//  Copyright © 2562 Art. All rights reserved.
//

import SwiftUI

struct HomeView: View {
    
    var body: some View {
        ZStack {
            GeometryReader { proxy in
                RadialGradient(
                    gradient: Gradient(colors: [.yellow, .black]),
                    center: UnitPoint(x: -CGFloat(100) / proxy.size.width, y: -CGFloat(300) / proxy.size.height),
                    startRadius: 100,
                    endRadius: 600
                )
                .overlay(Color.yellow.opacity(0.1))
            }
            .edgesIgnoringSafeArea(.top)
            
            GeometryReader { proxy in
                ScrollView {
                    MediaRow(title: "Recently Played")
                    MediaRow(title: "Your top podcasts")
                    MediaRow(title: "Your heavy rotation")
                    MediaRow(title: "New podcast episodes")
                    MediaRow(title: "Podcast picks of 2019")
                    MediaRow(title: "Popular playlists")
                    MediaRow(title: "Based on your recent listening")
                    MediaRow(title: "Charts")
                    MediaRow(title: "Throwback")
                        .padding(.bottom)
                }
                .frame(width: proxy.size.width, height: proxy.size.height)
            }
        }
    }
}

struct RadioView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .edgesIgnoringSafeArea(.bottom)
    }
}

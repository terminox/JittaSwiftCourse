//
//  MediaRow.swift
//  JittaMusic
//
//  Created by Art on 24/12/2562 BE.
//  Copyright © 2562 Art. All rights reserved.
//

import SwiftUI

struct MediaRow: View {
    
    let title: String
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(self.title)
                .foregroundColor(Color.white)
                .font(.headline)
                .fontWeight(.bold)
                .padding([.leading, .trailing, .top])
            
            ScrollView(.horizontal, showsIndicators: false) {
                HStack {
                    ForEach(0..<10) { i in
                        Button(action: {}) {
                            MediaItem(title: "Title \(i)", subtitle: "Subtitle \(i)")
                        }.padding(.trailing, 8)
                    }
                }.padding([.leading, .trailing])
            }
        }
    }
}

struct MediaRow_Previews: PreviewProvider {
    static var previews: some View {
        MediaRow(title: "Recently Played")
    }
}

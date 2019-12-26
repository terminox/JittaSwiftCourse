//
//  MediaItem.swift
//  JittaMusic
//
//  Created by Art on 25/12/2562 BE.
//  Copyright © 2562 Art. All rights reserved.
//

import SwiftUI

struct MediaItem: View {
    
    private let title: String
    private let subtitle: String?
    private let image: UIImage?
    
    private let imageWidth: CGFloat = 100
    
    var body: some View {
        VStack(alignment: .leading) {
            Image(uiImage: image ?? UIImage())
                .resizable()
                .frame(width: imageWidth, height: imageWidth)
                .background(Color.gray)
                .cornerRadius(8)
            
            Text(title)
                .font(.caption)
                .foregroundColor(Color.white)
                .padding(.top, 8)
            
            Text(subtitle ?? "")
                .font(.footnote)
                .foregroundColor(Color.gray)
                .padding(.top, 4)
        }
        .frame(maxWidth: imageWidth)
    }
    
    init(title: String, subtitle: String? = nil, image: UIImage? = nil) {
        self.title = title
        self.subtitle = subtitle
        self.image = image
    }
}

struct MediaItem_Previews: PreviewProvider {
    static var previews: some View {
        MediaItem(title: "Traveler", subtitle: "Official HIGE DANdism")
    }
}

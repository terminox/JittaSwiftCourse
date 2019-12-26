//
//  ImageDemoView.swift
//  JittaMusic
//
//  Created by Art on 25/12/2562 BE.
//  Copyright © 2562 Art. All rights reserved.
//

import SwiftUI

struct ImageDemoView: View {
    var body: some View {
        GeometryReader { proxy in
            Image("cat")
                .resizable()
                .scaledToFit()
                .mask(Circle())
//                .foregroundColor(Color.yellow)
//                .frame(width: proxy.size.width)
        }
    }
}

struct ImageDemoView_Previews: PreviewProvider {
    static var previews: some View {
        ImageDemoView()
    }
}

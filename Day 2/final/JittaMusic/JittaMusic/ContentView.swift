//
//  ContentView.swift
//  JittaMusic
//
//  Created by Art on 20/12/2562 BE.
//  Copyright © 2562 Art. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var isOn = false
    
    var body: some View {
        VStack {
            Button(action: {}) {
                ZStack {
                    Circle()
                        .frame(width: 100, height: 100, alignment: .center)
                        .foregroundColor(Color.blue)
                    
                    Text("Hello")
                        .foregroundColor(Color.white)
                }
            }
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

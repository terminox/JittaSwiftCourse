//
//  ContentView.swift
//  JittaMusic
//
//  Created by Art on 25/12/2562 BE.
//  Copyright © 2562 Art. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State var isAlertPresented = false
    
    var body: some View {
        Button(action: {
            self.isAlertPresented = true
        }) {
            Text("Welcome to Day 2!!!")
                .font(.title)
                .fontWeight(.bold)
                .padding(32)
                .background(Color.green)
                .foregroundColor(Color.red)
                .border(Color.pink, width: 10)
                .cornerRadius(16)
        }
        .alert(isPresented: $isAlertPresented) { () -> Alert in
            Alert(title: Text("This is 99th Merry Christmas"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

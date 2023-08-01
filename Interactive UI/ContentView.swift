//
//  ContentView.swift
//  Interactive UI
//
//  Created by Lina REZZIKI  on 27/7/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var name = ""
    @State private var textTitle = "What is your name?"
    var body: some View {
        VStack {
            Text(textTitle)
            
            TextField("Type your name here", text: $name )
                .multilineTextAlignment(.center)
                .font(.title)
                .border(Color.gray, width: 1)
            Button("Submit here") {
                textTitle = "Welcome, \(name)!"
        
            }
            .font(.title2)
            .buttonStyle(.borderedProminent)
            .tint(.purple)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
}


//
//  ContentView.swift
//  SwiftUI_CH1_5_ConstsScopeOneButtonChallenge
//
//  Created by Kevin Lefebvre on 1/20/25.
//

import SwiftUI

struct ContentView: View {
    @State private var systemImageName = ""
    @State private var imageTextName = ""
    var body: some View {
        Spacer()
        VStack {
            Image(systemName: systemImageName)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text(imageTextName)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
        }
        Spacer()
        HStack { //
            Button("Press Me!") {
                let message1 = "You are Awesome!"
                let message2 = "You are Great"
                
                if (imageTextName == message1) {
                    imageTextName = message2
                    systemImageName = "hand.thumbsup"
                } else {
                    imageTextName = message1
                    systemImageName = "sun.max.fill"
                }
                
            }
        }
        .buttonStyle(.borderedProminent)
        .tint(.orange)
        .font(.title2)
        .padding()
    }
}

#Preview {
    ContentView()
}

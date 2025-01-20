//
//  ContentView.swift
//  SwiftUI_CH_1_4_DebugConsole_Print_Conditionals
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
        HStack { // Not needed if only one button in row
            Button("Press Me!") {
                let message1 = "You are Awesome!"
                let message2 = "You are Great"
                let systemImageName1 = "hand.thumbsup"
                let systemImageName2 = "sun.max.fill"
                
                
                if (imageTextName == message1) {
                    imageTextName = message2
                    systemImageName = systemImageName2
                } else {
                    imageTextName = message1
                    systemImageName = systemImageName1
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

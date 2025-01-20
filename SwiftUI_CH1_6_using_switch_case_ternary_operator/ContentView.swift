//
//  ContentView.swift
//  SwiftUI_CH1_6_using_switch_case_ternary_operator
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
                .scaledToFit( )
                .foregroundColor(.orange)
            Text(imageTextName)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
        }
        Spacer()
        HStack {
            Button("Press Me") {
                let message1 = "You are awesome"
                let message2 = "You are Great!"
                let systemImageName1 = "hand.thumbsup"
                let systemImageName2 = "sun.max.fill"
//                if (imageTextName == message1) {
//                    imageTextName = message2
//                    systemImageName = systemImageName2
//                } else {
//                    imageTextName = message1
//                    systemImageName = systemImageName1
//                }
                // Do above but with ternary operator
                imageTextName = (imageTextName == message1) ? message2 : message1
                systemImageName = (systemImageName == systemImageName1) ? systemImageName2 : systemImageName1
                
                
            }
        }
        
        .buttonStyle(.borderedProminent)
        .tint(.orange)
        .padding()
    }
}

#Preview {
    ContentView()
}

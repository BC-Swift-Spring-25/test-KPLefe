//
//  ContentView.swift
//  SwiftUI_CH_1_7_AddingYourOwnImages
//
//  Created by Kevin Lefebvre on 1/20/25.
//

import SwiftUI

struct ContentView: View {
    @State private var imageName = ""
    @State private var imageTextName = ""
    var body: some View {
        Spacer()
        VStack {
            Image(imageName)
                .resizable()
                .scaledToFit( )
                .clipShape(RoundedRectangle(cornerRadius: 30))
                .shadow(radius:30)
            Text(imageTextName)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.red)
        }
        Spacer()
        HStack {
            Button("Press Me") {
                let message1 = "You are awesome"
                let message2 = "You are Great!"
                imageTextName = (imageTextName == message1) ? message2 : message1
                imageName = (imageName == "image0") ? "image1" : "image0"
                
                
            }
        }
        
        .buttonStyle(.borderedProminent)
        .padding()
    }
}

#Preview {
    ContentView()
}

//
//  ContentView.swift
//  SwiftUI_Challenge_Elvis
//
//  Created by Kevin Lefebvre on 1/20/25.
//

import SwiftUI

struct ContentView: View {
    // blank to start
    @State private var imagetext = ""
    @State private var systemNameImage = ""
    var body: some View {
        
        VStack {
            Text("What's So Funny \n'Bout")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
            Spacer()
              Image(systemName: systemNameImage)
                .resizable()
                .scaledToFit()
                .foregroundStyle(.black)
                .frame(width: 300, height: 300)
            Spacer()
            Text(imagetext)
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.purple)
            Spacer()
            HStack {
                Button("Peace") {
                    imagetext = "Peace"
                    systemNameImage = "peacesign"
                }
                Button("Love") {
                    imagetext = "Love"
                    systemNameImage = "heart"
                }
                Button("Understanding") {
                    imagetext = "Understanding"
                    systemNameImage = "lightbulb"

                }
            }
            .tint(.purple) // interactive views (button pressing) use tint
            .buttonStyle(.borderedProminent)
            .font(.title2)
        }
      .padding()
    }
}

#Preview {
    ContentView()
}

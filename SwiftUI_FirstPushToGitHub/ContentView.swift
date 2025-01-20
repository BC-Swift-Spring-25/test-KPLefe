//
//  ContentView.swift
//  SwiftUI_FirstPushToGitHub
//
//  Created by Kevin Lefebvre on 1/20/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "4.circle")
                .resizable()
                .scaledToFit()
            Text("Version 4.0!")
                .font(.largeTitle)
                .fontWeight(.black)
            Rectangle()
            
        }
        .padding()
        .foregroundStyle(.blue)
    }
}

#Preview {
    ContentView()
}

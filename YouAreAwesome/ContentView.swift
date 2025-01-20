//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Kevin Lefebvre on 1/20/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            Text("You Are Awesome!")
                .foregroundStyle(.tint)
                .font(.largeTitle)
        
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

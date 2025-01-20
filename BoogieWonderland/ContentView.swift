//
//  ContentView.swift
//  BoogieWonderland
//
//  Created by Kevin Lefebvre on 1/20/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Boogie Wonderland")
                .font(.largeTitle)
                .foregroundStyle(.tint)
        HStack {
            Image(systemName: "figure.dance")
                .imageScale(.large)
                .foregroundStyle(.orange)
            Image(systemName: "wind")
                .imageScale(.large)
                .foregroundStyle(.blue)
            Image(systemName: "music.note.house.fill")
                .imageScale(.large)
                .foregroundStyle(.orange)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

//
//  ContentView.swift
//  SwiftUI_CH1_3_ButtonStyle_Spacer_Frame
//
//  Created by Kevin Lefebvre on 1/20/25.
//

import SwiftUI

struct ContentView: View {
    @State private var message = "I Am A Programmer!"
    var body: some View {
        VStack {
            Spacer() // top of phone down
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
                // .framewihe (auto detect args wanted)
                //.frame(width: <#T##CGFloat?#>, height: <#T##CGFloat?#>)
                .frame(width:200, height: 200)
            Text(message)
                .font(.largeTitle)
                .fontWeight(.ultraLight)
                .foregroundStyle(.black)
            Spacer() // share space equally with above spacer
            HStack {
                Button("Awesome") {
                    message = "Awesome!"
                }
                Button("Great") {
                    message = "Great!"
                }
            }
            .buttonStyle(.borderedProminent)
            //.font(.system(size: 32))
            .font(.title2)
            .tint(.orange)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

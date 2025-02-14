//
//  ContentView.swift
//  SwiftUI_Week6_CH3_1_BuildingBipTheGuy
//
//  Created by Kevin Lefebvre on 2/14/25.
//

import SwiftUI
import AVFAudio

struct ContentView: View {
    @State private var audioPlayer: AVAudioPlayer!
    var body: some View {
        VStack {
            Spacer()
            Image("clown")
                .resizable()
                .scaledToFit( )
                .onTapGesture {
                    playSound(soundName: "punchSound")
                }
            Spacer()
            
            Button {
                // TODO: Button Action Here
            } label: {
                Label("Photo Library", systemImage: "photo.fill.on.rectangle.fill")
            }
             
        }
        .padding()
    }
    
    func playSound(soundName: String) {
            // if sound is playing stop first
            if (audioPlayer != nil && audioPlayer.isPlaying) {
                    audioPlayer.stop()
            }
            
            guard let soundFile = NSDataAsset(name: soundName) else {
                print("😡 Could not read file name \(soundName)")
                return
            }
            
            do {
                audioPlayer = try AVAudioPlayer(data: soundFile.data)
                audioPlayer.play()
            } catch {
                print("😡 Error \(error.localizedDescription) creating audioPlayer")
            }
        }
        
}

#Preview {
    ContentView()
}

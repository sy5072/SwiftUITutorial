//
//  StateBindingView.swift
//  SwiftUITutorial
//
//  Created by Seungyun Kim on 2022/04/10.
//

import SwiftUI

struct StateBindingView: View {
    
    @State private var isPlaying = false
    
    @Environment(\.colorScheme) var colorScheme
    @State private var progress: Double = 65.0
    @State private var time: Int = 188
    @State var timer = Timer.publish (every: 1, on: .current, in: .common).autoconnect()
    
    var body: some View {
        VStack {
            HStack{
                Image(uiImage: (UIImage(named: "music.png")!))
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 100, height: 100)
                
                Image(uiImage: (UIImage(named: colorScheme == .dark ? "music_text.png" : "music_text_light.png")!))
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 250, height: 100)
            }
            VStack{
                ProgressView("", value: progress, total: 188)
                    .progressViewStyle(LinearProgressViewStyle(tint: Color.pink))
                
                HStack{
                    Text("\(Int(progress)/60):\(String(format: "%02d", Int(progress)%60))")
                        .fontWeight(.bold)
                    
                    Spacer()
                    
                    Text("\(time/60):\(String(format: "%02d", time%60))")
                        .fontWeight(.bold)
                }
                
                
            }
            .frame(width: 350)
            .padding()
            
            HStack(spacing:50) {
                Image(systemName: "backward.fill")
                
                PlayButton(isPlaying: $isPlaying)
                
                Image(systemName: "forward.fill")
            }
            .font(.system(size: 40))
        }
        .onReceive(timer) { _ in
            if isPlaying && self.progress < 188 {
                self.progress += 1
            }
        }
    }
}

struct PlayButton : View {
    @Binding var isPlaying: Bool
    
    var body : some View {
        Button(action: {
            self.isPlaying.toggle()
        }){
            Image(systemName:  isPlaying ? "pause.fill" : "play.fill")
                .foregroundColor(.pink)
                .frame(width: 50, height: 50)
        }
    }
}

struct StateBindingView_Previews: PreviewProvider {
    static var previews: some View {
        StateBindingView()
    }
}

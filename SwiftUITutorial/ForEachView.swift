//
//  ForEachView.swift
//  SwiftUITutorial
//
//  Created by Seungyun Kim on 2022/04/10.
//

import SwiftUI

struct ForEachView: View {
    
    let imageList = ["airplayaudio", "airplayvideo", "airpods", "airpodspro", "applelogo"]
    
    var body: some View {
        VStack(spacing: 10){
            ForEach(imageList, id: \.self) { index in
                Image(systemName: index)
                    .padding(30)
                    .foregroundColor(Color.yellow)
                    .font(.largeTitle)
            }
        }
    }
}

struct ForEachView_Previews: PreviewProvider {
    static var previews: some View {
        ForEachView()
    }
}

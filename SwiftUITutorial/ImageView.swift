//
//  ImageView.swift
//  SwiftUITutorial
//
//  Created by Seungyun Kim on 2022/04/08.
//

import SwiftUI


struct ImageView: View {
    var body: some View {
        Image("profile")
//        Image(systemName: "person.circle")
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: 300, height: 200)
            .clipShape(Circle())
            .overlay(Circle().stroke(Color.gray, lineWidth: 3))
        
    }
}

struct ImageView_Preveiws: PreviewProvider {
    static var previews: some View{
        ImageView()
    }
}

//
//  StoryView.swift
//  SwiftUITutorial
//
//  Created by Seungyun Kim on 2022/04/11.
//

import SwiftUI

struct StoryView: View {
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing:30){
                ForEach(profilelists, id: \.self) { profile in
                    VStack(spacing: 0){
                        Image(profile.image)
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 100, height: 100)
                            .padding(15)
                            .overlay(Circle().stroke(Color.yellow, lineWidth: 7))
                        
                        Text(profile.name)
                            .font(.title2)
                            .bold()
                            .padding(.vertical, 20)
                    }
                }
            }
            .padding()
            
        }
    }
}

struct ProfileList: Identifiable, Hashable {
    let id = UUID()
    let image: String
    let name: String
}

let profilelists = [
    ProfileList(image: "sv_1", name: "내 스토리"),
    ProfileList(image: "sv_2", name: "Steven"),
    ProfileList(image: "sv_3", name: "Danny"),
    ProfileList(image: "sv_4", name: "Jenny"),
    ProfileList(image: "sv_1", name: "Lisa"),
    ProfileList(image: "sv_2", name: "Jun"),
    ProfileList(image: "sv_3", name: "Justin"),
    ProfileList(image: "sv_4", name: "Kate")
]

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView()
    }
}

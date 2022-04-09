//
//  StackView.swift
//  SwiftUITutorial
//
//  Created by Seungyun Kim on 2022/04/10.
//

import SwiftUI

struct StackView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 50){
            Text("Hello")
                .background(Color.yellow)
            Text("SwiftUI!")
                .background(Color.green)
        }
        .font(.system(size:50))
        .foregroundColor(Color.red)
        
        HStack(alignment: .top, spacing: 50){
            Text("Hello")
                .background(Color.yellow)
            Text("Swift\nUI!")
                .background(Color.green)
        }
        .font(.system(size:50))
        .foregroundColor(Color.red)
        
        ZStack{
            Image("codershigh_profile")
                .resizable()
                .aspectRatio(contentMode: .fit)
            
            EditButton()
        }
        .frame(width:300, height: 300)
        .clipShape(Circle())
        
        
    }
}

struct EditButton: View {
    var body: some View {
        VStack{
            Spacer()
            
            ZStack{
                Rectangle()
                    .fill(Color.black).opacity(0.6)
                    .frame(width:300, height: 70)
                
                Text("Edit")
                    .font(.largeTitle)
                    .bold()
                    .padding()
                    .foregroundColor(.white)
            }
        }
    }
}

struct StackView_Previews: PreviewProvider {
    static var previews: some View {
        StackView()
    }
}

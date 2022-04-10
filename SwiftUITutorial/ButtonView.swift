//
//  ButtonView.swift
//  SwiftUITutorial
//
//  Created by Seungyun Kim on 2022/04/10.
//

import SwiftUI

struct ButtonView: View {
    var body: some View {
        
        Button(action: {
            print("Click!")
        }){
            HStack{
                Text("Log in")
                
                Image(systemName: "arrow.right.circle")
            }
        }
        .buttonStyle(MyButtonStyle())
        
    }
}

struct MyButtonStyle: ButtonStyle {
    
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .font(.system(size:30, weight: .bold, design : .rounded))
            .foregroundColor(.white)
            .padding()
            .background(Color.pink)
            .clipShape(Capsule())
            .overlay(Capsule().stroke(Color.pink, lineWidth: 5))

    }
    
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView()
    }
}

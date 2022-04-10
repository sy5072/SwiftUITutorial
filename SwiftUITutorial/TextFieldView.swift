//
//  TextFiledView.swift
//  SwiftUITutorial
//
//  Created by Seungyun Kim on 2022/04/10.
//

import SwiftUI

struct TextFiledView: View {
    
    @State private var name: String = ""
    
    var body: some View {
        VStack{
            
            TextField("What's your name?", text: $name)
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .padding(20)
            
            Text("Hi, \(name)~~~")
                .font(.system(size:30, weight: .bold, design: .rounded))
                .foregroundColor(.pink)
        }
        
    }
}

struct TextFiledView_Previews: PreviewProvider {
    static var previews: some View {
        TextFiledView()
    }
}

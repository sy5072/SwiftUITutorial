//
//  ContentView.swift
//  SwiftUITutorial
//
//  Created by Seungyun Kim on 2022/04/08.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .font(.system(size:30, weight: .bold, design: .serif))
            .foregroundColor(.cyon)
            .underline()
            .frame(width: 200, height: 200)
            .background(Color.brown)
            .border(.black, width: 3)
    }
}



extension Color {
    static let cyon = Color(red: 26 / 255, green: 232 / 255, blue: 212 / 255 )
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

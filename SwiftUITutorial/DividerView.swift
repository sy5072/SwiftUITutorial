//
//  DividerView.swift
//  SwiftUITutorial
//
//  Created by Seungyun Kim on 2022/04/10.
//

import SwiftUI

struct DividerView: View {
    var body: some View {
        VStack{
        
            Text("Hello, World!")
            
            Divider()
            
            Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
        }
        
    }
}

struct DividerView_Previews: PreviewProvider {
    static var previews: some View {
        DividerView()
    }
}

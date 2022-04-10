//
//  ToggleView.swift
//  SwiftUITutorial
//
//  Created by Seungyun Kim on 2022/04/10.
//

import SwiftUI

struct ToggleView: View {
    
    @State private var isToggle = false
    
    var body: some View {
        VStack{
            Text(isToggle ? "Dark Mode" : "Light Mode")
                .font(.largeTitle)
                .foregroundColor(.pink)
                .padding()
                .overlay(RoundedRectangle(cornerRadius: 20)
                    .stroke(Color.pink, lineWidth: 5))
            
            Image(isToggle ? "dark_mode" : "light_mode")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 400, height: 300)
            
            HStack{
                Toggle("Label", isOn: $isToggle)
                    .labelsHidden()
                    .toggleStyle(SwitchToggleStyle(tint:.pink))
                
                
                
                Text(isToggle ? "ON" : "OFF")
                    .font(.title)
                    .padding()
                    .foregroundColor(.pink)
                
            }
            
        }
        
    }
    
}

struct ToggleView_Previews: PreviewProvider {
    static var previews: some View {
        ToggleView()
    }
}

//
//  AnimalDetailView.swift
//  SwiftUITutorial
//
//  Created by Seungyun Kim on 2022/04/11.
//

import SwiftUI

struct AnimalDetailView: View {
    
    var animal : Animal
    
    var body: some View {
        ScrollView(showsIndicators: false){
            VStack(spacing: 20) {
                Image(animal.image)
                
                VStack(alignment:.leading, spacing: 20){
                    HStack {
                        Text(animal.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                        
                        Spacer()
                        
                        Button(action: {
                            
                            
                        }, label: {
                            Image(systemName: animal.isLike ? "heart.fill" : "heart")
                        })
                    }
                    
                    Text(animal.headline)
                        .font(.headline)
                    
                    Text("Learn more about \(animal.title)".uppercased())
                        .fontWeight(.bold)
                    
                    Text(animal.description)
                }
                .padding(.horizontal, 20)
            }
            .padding(.top, 100)
        }
        .edgesIgnoringSafeArea(.top)
    }
}

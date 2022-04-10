//
//  AnimalLikeView.swift
//  SwiftUITutorial
//
//  Created by Seungyun Kim on 2022/04/11.
//

import SwiftUI

struct AnimalLikeView: View {
    
    var animals : [Animal] = animalsData
    
    var body: some View {
        NavigationView{
            List(animals.filter{$0.isLike == true}){ animal in
                
                HStack{
                    AnimalListView(animal: animal)
                    
                    Spacer()
                    
                    Button(action: {
                        
                    }, label: {
                        Image(systemName: animal.isLike ? "heart.fill" : "heart")
                    })
                }
                
            }
            .navigationTitle("Like Animals")
        }
    }
}


//
//  AnimalListView.swift
//  SwiftUITutorial
//
//  Created by Seungyun Kim on 2022/04/11.
//

import SwiftUI

struct AnimalListView: View {
    
    var animal: Animal
    
    var body: some View {
        HStack{
            Image(animal.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 80, height: 80)
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5){
                Text(animal.title)
                    .font(.title2)
                    .bold()
                
                Text(animal.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
                    .lineLimit(2)
            }
        }.padding(.vertical, 4)
    }
}

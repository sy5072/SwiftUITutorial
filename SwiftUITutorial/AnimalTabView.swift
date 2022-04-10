//
//  AnimalTabView.swift
//  SwiftUITutorial
//
//  Created by Seungyun Kim on 2022/04/11.
//

import SwiftUI

struct AnimalTabView: View {
    var body: some View {
        TabView{
            AnimalMainView()
                .tabItem {
                    Image(systemName: "house.fill")
                    Text("Main")
                }
            AnimalLikeView()
                .tabItem {
                    Image(systemName: "heart.fill")
                    Text("Like")
                    
                }
            
        }
    }
}

struct AnimalTabView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalTabView()
    }
}

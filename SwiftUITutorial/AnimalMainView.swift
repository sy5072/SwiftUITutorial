//
//  AnimalMainView.swift
//  SwiftUITutorial
//
//  Created by Seungyun Kim on 2022/04/11.
//

import SwiftUI


struct AnimalMainView: View {
    var body: some View {
//        NavigationView{
//            List(0 ..< 5) {num in
//                NavigationLink(destination: NavigationDetailView(num: num)){
//                    Text("List \(num+1)")
//                }
//
//            }
//            .navigationBarTitle("NavigationView")
//        }
//        .navigationViewStyle(StackNavigationViewStyle())
        
        var animals : [Animal] = animalsData
        
        NavigationView {
            List(animals) { animal in
                NavigationLink(destination: AnimalDetailView(animal:animal)) {
                    AnimalListView(animal: animal)
                }
                
            }
            .navigationBarTitle("Animals")
        }
        
    }
}

//struct NavigationDetailView: View {
//
//    var num: Int
//
//    var body: some View {
//        Text("This is List \(num+1)")
//    }
//}

struct AnimalMainView_Previews: PreviewProvider {
    static var previews: some View {
        AnimalMainView()
    }
}

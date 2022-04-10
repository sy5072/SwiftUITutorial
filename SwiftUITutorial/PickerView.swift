//
//  PickerView.swift
//  SwiftUITutorial
//
//  Created by Seungyun Kim on 2022/04/10.
//

import SwiftUI

struct PickerView: View {
    @State private var selectedFlavor = Flavor.Chocolate
    
    var body: some View {
        
//        VStack{
//            Picker("Flavor", selection : $selectedFlavor) {
//                Text("Chocolate").tag(Flavor.Chocolate)
//                Text("Vanilla").tag(Flavor.Vanilla)
//                Text("Strawberry").tag(Flavor.Strawberry)
//                Text("MintChocolate").tag(Flavor.MintChocolate)
//            }
//            .pickerStyle(.segmented)
//
//            Text("Selected Flavor : \(selectedFlavor.rawValue)")
//                .font(.largeTitle)
//                .foregroundColor(.pink)
//        }
        
        Menu {
            Picker(selection : $selectedFlavor, label: EmptyView()) {
                            Text("Chocolate").tag(Flavor.Chocolate)
                            Text("Vanilla").tag(Flavor.Vanilla)
                            Text("Strawberry").tag(Flavor.Strawberry)
                            Text("MintChocolate").tag(Flavor.MintChocolate)
                        }
                       
            
            
        } label: {
            HStack(spacing:5) {
                Text(selectedFlavor.rawValue)
                    .font(.system(size: 30, weight: .bold, design: .rounded))
                
                Image(systemName: "chevron.down")
                    .font(.system(size: 20,g weight: .medium, design: .rounded))
            }
            .foregroundColor(.black)
            .padding(.horizontal)
        }
       
    }
}

enum Flavor:String {
    case Chocolate
    case Vanilla
    case Strawberry
    case MintChocolate
}

struct PickerView_Previews: PreviewProvider {
    static var previews: some View {
        PickerView()
    }
}

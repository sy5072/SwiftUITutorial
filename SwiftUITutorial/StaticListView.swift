//
//  ListView.swift
//  SwiftUITutorial
//
//  Created by Seungyun Kim on 2022/04/10.
//

import SwiftUI

struct StaticListView: View {
    var body: some View {
        List{
            HStack{
                Text("Sunny")
                Spacer()
                Image(systemName: "sun.max")
                    .foregroundColor(.green)
            }
            .padding()
            
            HStack{
                Text("Rainy")
                Spacer()
                Image(systemName: "cloud.rain")
                    .foregroundColor(.green)
            }
            .padding()
            
            HStack{
                Text("Cloudy")
                Spacer()
                Image(systemName: "smoke")
                    .foregroundColor(.green)
            }
            .padding()
            
            HStack{
                Text("Windy")
                Spacer()
                Image(systemName: "wind")
                    .foregroundColor(.green)
            }
            .padding()
            
            
            HStack{
                Text("Snowy")
                Spacer()
                Image(systemName: "snow")
                    .foregroundColor(.green)
            }
            .padding()
        }
        .font(.system(size: 30, weight: .bold, design: .rounded))
    }
}

struct StaticListView_Previews: PreviewProvider {
    static var previews: some View {
        StaticListView()
    }
}

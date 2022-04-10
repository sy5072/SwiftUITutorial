//
//  DynamicListView.swift
//  SwiftUITutorial
//
//  Created by Seungyun Kim on 2022/04/10.
//

import SwiftUI

struct DynamicListView: View {
    var body: some View {
        List(playlists) { i in
            CardView(list: i)
            
        }
        .listStyle(SidebarListStyle())
    }
}

struct CardView: View {
    
    var list: PlayList
    
    var body: some View {
        VStack{
            Image(list.imageName)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:150, height: 100)
            
            VStack(alignment: .leading){
                HStack{
                    Text(list.title)
                        .bold()
                        .lineLimit(1)
                    Spacer()
                    Image(systemName: "chevron.right")
                        .foregroundColor(.gray)
                }
                .font(.title2)
                
                Text(list.name)
                    .font(.caption)
                
                HStack{
                    ProgressView(value: list.percent, total: 1.0)
                        .progressViewStyle(LinearProgressViewStyle(tint: Color.yellow))
                        .frame(height: 10)
                    
                    Text("\(Int(list.percent * 100))%")
                        .font(.caption)
                }
            }
            .padding()
        }
        .padding()
        .background(Color.black)
        .foregroundColor(.white)
        .cornerRadius(15)
    }
}

let playlists = [
    PlayList(title: "간단한 게임으로 코딩 시작해보기", name: "스위프트 하이", percent: 0.2, imageName: "dl_1"),
    PlayList(title: "포털타고 순간이동을 해보자", name: "스위프트 하이", percent: 0.4, imageName: "dl_2"),
    PlayList(title: "숨은 버그 찾기", name: "스위프트 하이", percent: 0.5, imageName: "dl_3"),
    PlayList(title: "함수란 신발끈 묶기다?", name: "스위프트 하이", percent: 0.1, imageName: "dl_4")

]


struct PlayList:Identifiable {
    let id = UUID()
    let title: String
    let name : String
    let percent: Double
    let imageName: String
}

struct DynamicListView_Previews: PreviewProvider {
    static var previews: some View {
        DynamicListView()
    }
}

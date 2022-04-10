//
//  Chapter1_Project.swift
//  SwiftUITutorial
//
//  Created by Seungyun Kim on 2022/04/10.
//

import SwiftUI

struct Chapter1_Project: View {
    
    @State private var isPrivate = true
    @State private var dontDisturb = false
    
    var body: some View {
        VStack{
            Group{
                VStack{
                    HStack{
                        Image(systemName: "chevron.left")
                            .padding()
                        
                        Spacer()
                        
                        Text("Profile")
                            .font(.system(size: 35, weight: .bold, design: .rounded))
                        
                        Spacer().frame(width: 135)
                    }
                    
                    Spacer().frame(height:50)
                    
                    Image("sv_2")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 130, height: 130)
                    
                    Text("CodersHigh")
                        .font(.system(size: 20, weight: .bold, design: .rounded))
                        .padding(10)
                    
                    Button(action:{}){
                        Text("Edit Profile")
                    }
                        .foregroundColor(.white)
                        .padding(5)
                        .background(Color.cyon)
                        .clipShape(Capsule())
                        .overlay(Capsule().stroke(Color.cyon, lineWidth: 5))
                        
                    
                    Text("@iOS Developer")
                        .font(.system(size: 15))
                        .padding(10)
                    
                    HStack{
                        Image("instagram")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                        
                        Text("coders_high_")
                        
                        Spacer().frame(width:20)
                            
                        Image("youtube")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 30, height: 30)
                        
                        Text("스위프트하이")
                        
                    }
                    
                    Spacer().frame(height:20)
                    
                    HStack{
                        Text("105")
                            .font(.system(size: 30, weight: .bold, design: .rounded))
                        Text("Followers")
                        
                        Spacer().frame(width: 20)
                        
                        Text("96")
                            .font(.system(size: 30, weight: .bold, design: .rounded))
                        Text("Following")
                    }
                    
                    
                    
                    
                }
                
                Divider()
                
                Group{
                    VStack{
                        HStack{
                            Image(systemName: "lock")
                            Text("Private Account")
                            Spacer()
                            Toggle("label", isOn: $isPrivate)
                                .labelsHidden()
                        }
                        
                        
                        HStack{
                            Image(systemName: "bell")
                            Text("Do not disturb")
                            Spacer()
                            Toggle("label2", isOn: $dontDisturb)
                                .labelsHidden()
                        }
                    }
                    .frame(width: 300)
                    .padding()
                }
                
                Spacer()
        }
    }
        
        
        
        
    }
}

struct Chapter1_Project_Previews: PreviewProvider {
    static var previews: some View {
        Chapter1_Project()
    }
}



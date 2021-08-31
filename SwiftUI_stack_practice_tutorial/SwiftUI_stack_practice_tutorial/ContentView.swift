//
//  ContentView.swift
//  SwiftUI_stack_practice_tutorial
//
//  Created by soyeon on 2021/08/31.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        ZStack(alignment: .bottomTrailing) {
            
            VStack(alignment: .leading, spacing: 0) {
                
                HStack {
                    Image(systemName: "line.horizontal.3")
                        .font(.largeTitle)
                    
                    Spacer()
                    
                    Image(systemName: "person.crop.circle.fill")
                        .font(.largeTitle)
                }
                .padding()
                
                Text("김소연 할 일 목록")
                    .font(.system(size: 40))
                    .fontWeight(.black)
                    .padding(.horizontal, 20)
                
                ScrollView {
                    VStack {
                        MyProjectCard()
                        MyBasicCard()
                        MyCard(icon: "tray.fill", title: "서랍 정리", start: "1 PM", end: "2 PM", bgColor: .green)
                        MyCard(icon: "tv.fill", title: "유튜브 시청", start: "3 PM", end: "4 PM", bgColor: .red)
                        MyCard(icon: "cart.fill", title: "저녁 장보기", start: "5 PM", end: "6 PM", bgColor: .blue)
                        MyCard(icon: "gamecontroller.fill", title: "게임", start: "9 PM", end: "10 PM", bgColor: .black)
                    }
                    .padding()
                }
            }
            
            Circle()
                .foregroundColor(.yellow)
                .frame(width: 60, height: 60)
                .overlay(
                    Image(systemName: "plus")
                        .font(.system(size: 30))
                        .foregroundColor(.white)
                )
                .padding(10)
                .shadow(radius: 10)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

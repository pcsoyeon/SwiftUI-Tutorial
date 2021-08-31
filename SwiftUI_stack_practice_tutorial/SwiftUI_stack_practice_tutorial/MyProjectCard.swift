//
//  MyProjectCard.swift
//  SwiftUI_stack_practice_tutorial
//
//  Created by soyeon on 2021/08/31.
//

import SwiftUI

struct MyProjectCard: View {
    
    // struct는 (class)와 다르게 값이 고정되어 있으므로 State를 통해 상태 변경
    @State
    var shouldShowAlert: Bool = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            Rectangle()
                .frame(height: 0)
            
            Text("김소연 스유 프로젝트")
                .font(.system(size: 20))
                .fontWeight(.black)
                .padding(.bottom, 5)
            
            Text("10 AM - 11 AM")
                .foregroundColor(.secondary)
                .padding(.bottom, 10)
            
            Spacer().frame(height: 20)
            HStack {
                Image("1")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                    .overlay(
                        Circle()
                            .stroke(lineWidth: 3)
                            .foregroundColor(.black)
                    )
                Image("2")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                Image("3")
                    .resizable()
                    .frame(width: 50, height: 50)
                    .clipShape(Circle())
                
                Spacer()
                
                Button(action: {
                    print("Clicked")
                    self.shouldShowAlert = true
                }) {
                    Text("확인")
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding()
                        .frame(width: 80)
                        .background(Color.blue)
                        .cornerRadius(18)
                }
                .alert(isPresented: $shouldShowAlert, content: {
                    Alert(title: Text("알림창입니다!"))
                })
            }
        }
        .padding(30)
        .background(Color.yellow)
        .cornerRadius(20)
    }
}

struct MyProjectCard_previes: PreviewProvider {
    static var previews: some View {
        Group {
            MyProjectCard()
        }
    }
}

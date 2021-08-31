//
//  MyBasicCard.swift
//  SwiftUI_stack_practice_tutorial
//
//  Created by soyeon on 2021/08/31.
//

import SwiftUI

struct MyCard: View {
    
    // variables
    var icon: String
    var title: String
    var start: String
    var end: String
    var bgColor: Color
    
    // view
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: icon)
                .font(.system(size: 40))
                .foregroundColor(.white)
            
            VStack(alignment: .leading, spacing: 0) {
                Divider()
                    .opacity(0)
                Text(title)
                    .font(.system(size: 23))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Spacer()
                    .frame(height: 5)
                
                Text("\(start) - \(end)")
                    .foregroundColor(.white)
            }
        }
        .padding()
        .background(bgColor)
        .cornerRadius(20)
    }
}

struct MyCard_previews: PreviewProvider {
    static var previews: some View {
        MyCard(icon: "book.fill", title: "책 읽기", start: "8 PM", end: "10 PM", bgColor: .purple)
    }
}

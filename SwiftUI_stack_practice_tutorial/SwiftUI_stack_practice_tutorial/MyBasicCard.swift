//
//  MyBasicCard.swift
//  SwiftUI_stack_practice_tutorial
//
//  Created by soyeon on 2021/08/31.
//

import SwiftUI

struct MyBasicCard: View {
    var body: some View {
        HStack(spacing: 20) {
            Image(systemName: "flag.fill")
                .font(.system(size: 40))
                .foregroundColor(.white)
            
            VStack(alignment: .leading, spacing: 0) {
                Divider()
                    .opacity(0)
                Text("Title")
                    .font(.system(size: 23))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                
                Spacer()
                    .frame(height: 5)
                
                Text("Subtitle")
                    .foregroundColor(.white)
            }
        }
        .padding()
        .background(Color.purple)
        .cornerRadius(20)
    }
}

struct MyBasicCard_previews: PreviewProvider {
    static var previews: some View {
        MyBasicCard()
    }
}

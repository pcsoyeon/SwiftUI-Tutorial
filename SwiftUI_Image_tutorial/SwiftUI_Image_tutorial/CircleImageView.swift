//
//  CircleImageView.swift
//  SwiftUI_Image_tutorial
//
//  Created by soyeon on 2021/08/25.
//

import SwiftUI

struct CircleImageView: View {
    var body: some View {
//        Image(systemName: "flame.fill")
//            .font(.system(size: 50))
//            .foregroundColor(Color.red)
//            .shadow(color: .gray, radius: 2, x: 2, y: 10)
        
//        Image("myImage")
//            .resizable()
//            .aspectRatio(contentMode: .fill)
//            .frame(width: 200)
//            .clipped()
//
//            .edgesIgnoringSafeArea(.all)
        
        Image("myImage")
            .resizable()
            .scaledToFill()
            .frame(width: 300, height: 300)
            .clipShape(Circle())
            
            // 그림자
            .shadow(color: .gray, radius: 10, x: 5, y: 13)
            
            // 화면 어둡게
            .overlay(Circle()
                        .foregroundColor(.black)
                        .opacity(0.5))
            
            // 보라색 선 -> 안쪽으로
            .overlay(Circle().stroke(Color.yellow, lineWidth: 5)
                        .padding())
            
            // 노란색 선
            .overlay(Circle().stroke(Color.purple, lineWidth: 8))
            
            // 텍스트
            .overlay(Text("Camping")
                        .foregroundColor(.white)
                        .font(.system(size: 40))
                        .fontWeight(.semibold))
        
    }
}

struct CircleImageView_Previews: PreviewProvider {
    static var previews: some View {
        CircleImageView()
    }
}

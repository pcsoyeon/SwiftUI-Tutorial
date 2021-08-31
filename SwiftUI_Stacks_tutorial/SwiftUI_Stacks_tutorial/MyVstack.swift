//
//  MyVstack.swift
//  SwiftUI_Stacks_tutorial
//
//  Created by soyeon on 2021/08/31.
//

import SwiftUI

struct MyVstack: View {
    
    var body: some View {
        // Spacing - 각 요소들 간 5만큼 떨어지도록 배치
        VStack(alignment: .trailing, spacing: 5) {
            
            // 요소들을 밀어버리고 싶을 때
            Spacer()
            
            // VStack의 alignment는 요소간의 정렬, 요소 모두가 trailing으로 정렬되고 싶다면 divider 사용
            Divider()
                .opacity(0)
            
            // Divider 말고?
//            Rectangle()
//                .frame(height: 0)
            
            Text("Text")
                .font(.system(size: 30))
                .fontWeight(.heavy)
            
            Rectangle()
                // 기본적으로 전체가 모두 채워지는 frame
                .frame(width: 100, height: 100)
                .foregroundColor(.red)
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.yellow)
            
            Spacer()
                .frame(height: 50)
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.blue)
            
            Spacer()
            // Spacer()를 넣은만큼의 비율로 위치를 계산하여 요소를 뷰에 배치
            Spacer()
        }
        // Safe Area까지 모두 채우고 싶을 경우
//        .edgesIgnoringSafeArea(.all)
        .frame(width: 300)
        .background(Color.green)
    }
}

struct MyVstack_Previews: PreviewProvider {
    static var previews: some View {
        MyVstack()
    }
}

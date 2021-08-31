//
//  MyZtack.swift
//  SwiftUI_Stacks_tutorial
//
//  Created by soyeon on 2021/08/31.
//

import SwiftUI

struct MyZtack: View {
    var body: some View {
        // default: view가 위에서 아래로 갈수록 중첩 (덮음)
        // 순서를 임의로 설정하려면? zIndex 사용 
        ZStack {
            Rectangle()
                .frame(width: 150, height: 150)
                .foregroundColor(.red)
                .zIndex(2)
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.yellow)
                .zIndex(1)
            
            Rectangle()
                .frame(width: 50, height: 50)
                .foregroundColor(.blue)
                .zIndex(0)
        }
    }
}

struct MyZtack_Previews: PreviewProvider {
    static var previews: some View {
        MyZtack()
    }
}

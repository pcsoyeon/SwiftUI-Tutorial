//
//  MyHstack.swift
//  SwiftUI_Stacks_tutorial
//
//  Created by soyeon on 2021/08/31.
//

import SwiftUI

struct MyHstack: View {
    var body: some View {
        
        HStack(alignment: .center) {
//            Divider()
            
//            Rectangle()
//                .frame(width: 100, height: 100)
//                .foregroundColor(.red)
            Image(systemName: "flame.fill")
                .foregroundColor(.red)
                .font(.system(size: 100))
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.yellow)
            
            Rectangle()
                .frame(width: 100, height: 100)
                .foregroundColor(.blue)
        }
        .padding()
        .background(Color.green)
    }
}

struct MyHstack_previews: PreviewProvider {
    static var previews: some View {
        MyHstack()
    }
}

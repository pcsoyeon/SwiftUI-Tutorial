//
//  MyTextView.swift
//  SwiftUI_tutoiral_#1
//
//  Created by soyeon on 2021/08/22.
//

import SwiftUI

struct MyTextView: View {
    
    @State
    private var index: Int = 0
    
    private let backgroundColors = [
        Color.red,
        Color.orange,
        Color.yellow,
        Color.green,
        Color.blue,
        Color.purple
    ]
    
    var body: some View {
        VStack {
            Spacer()
            Text("Item Index: \(self.index)")
                .font(.system(size: 30))
                .fontWeight(.bold)
                .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 100)
            Spacer()
        }
        .background(self.backgroundColors[index])
        .edgesIgnoringSafeArea(.all)
        .onTapGesture {
            if self.index == self.backgroundColors.count - 1 {
                self.index = 0
            } else {
                self.index += 1
            }
        }
    }
}

struct MyTextView_Previews: PreviewProvider {
    static var previews: some View {
        MyTextView()
    }
}

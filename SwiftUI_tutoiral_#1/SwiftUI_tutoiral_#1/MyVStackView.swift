//
//  MyVStackView.swift
//  SwiftUI_tutoiral_#1
//
//  Created by soyeon on 2021/08/21.
//

import SwiftUI

struct MyVStackView: View {
    var body: some View {
        VStack {
            Text("1!")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.white)
            Text("2!")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.white)
            Text("3!")
                .font(.largeTitle)
                .bold()
                .foregroundColor(.white)
        }
        .background(Color.pink)
    }
}

struct MyVStackView_Previews: PreviewProvider {
    static var previews: some View {
        MyVStackView()
    }
}

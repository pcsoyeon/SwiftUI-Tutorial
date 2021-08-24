//
//  MyVStackView.swift
//  SwiftUI_tutoiral_#1
//
//  Created by soyeon on 2021/08/21.
//

import SwiftUI

struct MyVStackView: View {
    
    // 데이터 연동
    @Binding
    var isActivated: Bool
    
    init(isActivated: Binding<Bool> = .constant(false)) {
        _isActivated = isActivated
    }
    
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
        .background(isActivated ? Color.pink : Color.yellow)
        .padding(isActivated ? 10 : 0)
    }
}

struct MyVStackView_Previews: PreviewProvider {
    static var previews: some View {
        MyVStackView()
    }
}

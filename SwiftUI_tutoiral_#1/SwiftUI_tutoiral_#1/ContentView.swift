//
//  ContentView.swift
//  SwiftUI_tutoiral_#1
//
//  Created by soyeon on 2021/08/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HStack {
            MyVStackView()
            MyVStackView()
            MyVStackView()
        }
        .padding(10)
        .background(Color.black)
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

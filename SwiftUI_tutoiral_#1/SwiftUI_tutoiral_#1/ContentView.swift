//
//  ContentView.swift
//  SwiftUI_tutoiral_#1
//
//  Created by soyeon on 2021/08/21.
//

import SwiftUI

struct ContentView: View {
    
    @State
    private var isActive: Bool = false
    
    var body: some View {
        HStack {
            MyVStackView()
            MyVStackView()
            MyVStackView()
        }
        .padding(10)
        .background(isActive ? Color.white : Color.black)
        .onTapGesture {
            print("👋 HStack Tapped !!")
            self.isActive.toggle()
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

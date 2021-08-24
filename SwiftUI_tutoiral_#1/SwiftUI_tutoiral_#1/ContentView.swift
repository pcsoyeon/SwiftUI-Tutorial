//
//  ContentView.swift
//  SwiftUI_tutoiral_#1
//
//  Created by soyeon on 2021/08/21.
//

import SwiftUI

struct ContentView: View {
    
    @State
    private var isActivated: Bool = false
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                HStack {
                    MyVStackView(isActivated: $isActivated)
                    MyVStackView(isActivated: $isActivated)
                    MyVStackView(isActivated: $isActivated)
                }
                .padding(isActivated ? 50 : 10)
                .background(isActivated ? Color.white : Color.black)
                .onTapGesture {
                    print("👋 HStack Tapped")
                    
                    withAnimation {
                        self.isActivated.toggle()
                    }
                } // HStack
                
                // Navigation Button(link)
                NavigationLink(
                    destination: MyTextView(isActivated: $isActivated)) {
                    Text("네비게이션")
                        .fontWeight(.heavy)
                        .font(.system(size: 30))
                        .padding(10)
                        .background(Color.black)
                        .foregroundColor(Color.white)
                        .cornerRadius(15)
                } .padding(.top, 50)
                
            }
    
        } // Navigation
        
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

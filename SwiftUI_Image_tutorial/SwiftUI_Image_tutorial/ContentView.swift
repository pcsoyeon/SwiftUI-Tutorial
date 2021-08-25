//
//  ContentView.swift
//  SwiftUI_Image_tutorial
//
//  Created by soyeon on 2021/08/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack {
                Image("myImage")
                    .frame(height: 10)
                    .offset(y: -1100)
                CircleImageView()
                
                HStack {
                    NavigationLink(
                        destination: MyWebview(urlToLoad: "https://www.naver.com")
                            .edgesIgnoringSafeArea(.all)
                    ){
                        Text("Naver")
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                            .padding()
                            .background(Color.green)
                            .cornerRadius(15)
                    }
                    
                    NavigationLink(
                        destination: MyWebview(urlToLoad: "https://www.google.co.kr/")
                            .edgesIgnoringSafeArea(.all)
                    ){
                        Text("Google")
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                            .padding()
                            .background(Color.blue)
                            .cornerRadius(15)
                    }
                    
                    NavigationLink(
                        destination: MyWebview(urlToLoad: "https://www.apple.com")
                            .edgesIgnoringSafeArea(.all)
                    ){
                        Text("Apple")
                            .fontWeight(.semibold)
                            .foregroundColor(Color.white)
                            .padding()
                            .background(Color.black)
                            .cornerRadius(15)
                    }
                }
                .padding(50)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

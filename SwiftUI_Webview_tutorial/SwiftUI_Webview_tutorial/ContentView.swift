//
//  ContentView.swift
//  SwiftUI_Webview_tutorial
//
//  Created by soyeon on 2021/08/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
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
                        .background(Color.yellow)
                        .cornerRadius(15)
                }
                
                NavigationLink(
                    destination: MyWebview(urlToLoad: "https://www.daum.net")
                        .edgesIgnoringSafeArea(.all)
                ){
                    Text("Daum")
                        .fontWeight(.semibold)
                        .foregroundColor(Color.white)
                        .padding()
                        .background(Color.blue)
                        .cornerRadius(15)
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

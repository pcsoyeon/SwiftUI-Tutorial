//
//  MyWebview.swift
//  SwiftUI_Webview_tutorial
//
//  Created by soyeon on 2021/08/24.
//

import SwiftUI
import WebKit

struct MyWebview: UIViewRepresentable {
    var urlToLoad: String
    
    // UI View 생성
    func makeUIView(context: Context) -> WKWebView {
        // Unwrapping
        guard let url = URL(string: urlToLoad) else {
            return WKWebView()
            
        }
        
        // Webview 인스턴스 생성
        let webView = WKWebView()
        
        // Webview 로드
        webView.load(URLRequest(url: url))
        
        return webView
    }
    
    // UI View Update
    func updateUIView(_ uiView: WKWebView, context: UIViewRepresentableContext<MyWebview>) {
        
    }
}

struct MyWebview_Previews: PreviewProvider {
    static var previews: some View {
        MyWebview(urlToLoad: "http://www.naver.com")
    }
}

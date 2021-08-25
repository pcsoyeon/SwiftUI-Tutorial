//
//  ContentView.swift
//  SwiftUI_Text_tutorial
//
//  Created by soyeon on 2021/08/24.
//

import SwiftUI

struct ContentView: View {
    
    static let dateFormat: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "YYYY년 M월 d일"
        return formatter
    }()
    
    private var today = Date()
    
    private var trueOrFalse: Bool = false
    
    private var number: Int = 0
    
    var body: some View {
        
        VStack {
            Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s.")
                .tracking(3)
                .font(.system(.body, design: .rounded))
                .fontWeight(.medium)
                .multilineTextAlignment(.center)
                .lineLimit(nil)
                .lineSpacing(10)
                .truncationMode(.middle)
                .shadow(color: .pink, radius: 5, x: 0.0, y: 2.0)
                
                .padding(.vertical, 20)
                .background(Color.white)
                .foregroundColor(Color.black)
                .cornerRadius(20)
                
                .padding()
                .background(Color.black)
            
            Text("안녕하세요")
                .fontWeight(.bold)
                
                .padding()
                .background(Color.black)
                .foregroundColor(Color.pink)
                .cornerRadius(10)
            
            Text("오늘은 \(today, formatter: ContentView.dateFormat) 입니다.")
            
            Text("Bool Type Data : \(String(trueOrFalse))")
            
            Text("Int Type Data: \(number)")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

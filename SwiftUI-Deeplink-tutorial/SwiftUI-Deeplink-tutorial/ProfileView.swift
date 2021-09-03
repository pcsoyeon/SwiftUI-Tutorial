//
//  ProfileView.swift
//  SwiftUI-Deeplink-tutorial
//
//  Created by soyeon on 2021/09/03.
//

import Foundation
import SwiftUI

struct ProfileView: View {
    var body: some View {
        Rectangle()
            .foregroundColor(.purple)
            .frame(width: 100, height: 100)
            .cornerRadius(10)
            .overlay(Text("프로필")
                        .font(.system(size: 23))
                        .fontWeight(.black)
                        .foregroundColor(.white))
    }
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}

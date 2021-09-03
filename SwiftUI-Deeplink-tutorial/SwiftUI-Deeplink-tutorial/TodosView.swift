//
//  TodosView.swift
//  SwiftUI-Deeplink-tutorial
//
//  Created by soyeon on 2021/09/03.
//

import Foundation
import SwiftUI

struct TodoItem: Identifiable, Hashable {
    var id: UUID
    var title: String
}

func prepareData() -> [TodoItem] {
    print("prepareData() 호출")
    
    var newList = [TodoItem]()
    
    for i in 0...20 {
        let newTodo = TodoItem(id: UUID(), title: "내 할 일\(i)")
        print("newTodo.id: \(newTodo.id), newTodo.title: \(newTodo.title)")
        newList.append(newTodo)
    }
    
    return newList
}

struct TodosView: View {
    @State var todoItems = [TodoItem]()
    
    // 생성자 메소드
    init() {
        _todoItems = State(initialValue: prepareData())
    }
    
    var body: some View {
        NavigationView {
            List(todoItems) { todoItem in
                NavigationLink(
                    destination: Text("\(todoItem.title)"),
                    label: {
                        Text("\(todoItem.title)")
                    })
            }
            .navigationTitle(Text("할 일 목록"))
        }
    }
}

struct TodosView_proviews: PreviewProvider {
    static var previews: some View {
        TodosView()
    }
}

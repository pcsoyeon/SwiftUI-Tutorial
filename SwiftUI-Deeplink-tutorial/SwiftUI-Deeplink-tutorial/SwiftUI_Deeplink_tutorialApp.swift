//
//  SwiftUI_Deeplink_tutorialApp.swift
//  SwiftUI-Deeplink-tutorial
//
//  Created by soyeon on 2021/09/03.
//

import SwiftUI

@main
struct SwiftUI_Deeplink_tutorialApp: App {
    @State var selectedTab = TabIdentifier.todos
    
    var body: some Scene {
        WindowGroup {
            TabView(selection: $selectedTab,
                    content:  {
                        TodosView().tabItem {
                            VStack {
                                Image(systemName: "list.bullet")
                                Text("할 일 목록")
                            }
                        }.tag(TabIdentifier.todos)
                        ProfileView().tabItem {
                            VStack {
                                Image(systemName: "person.circle.fill")
                                Text("프로필")
                            }
                        }.tag(TabIdentifier.profile)
                    })
                .onOpenURL(perform: { url in
                    // 열려야 하는 url 처리
                    guard let tabId = url.tabIdentifier else { return }
                    selectedTab = tabId
                })
        }
    }
}

struct SwiftUI_Deeplink_tutorialApp_Previews: PreviewProvider {
    static var previews: some View {
        Text("Hello, world.")
    }
}

// 어떤 탭이 선택 되었는지
enum TabIdentifier: Hashable {
    case todos
    case profile
}

// 어떤 페이지를 보여주어야 하는지
enum PageIdentifier: Hashable {
    case todoItem(id: UUID)
}

extension URL {
    // info에서 추가한 딥링크가 들어왔는지 여부
    var isDeeplink: Bool {
        return scheme == "deeplink-swiftui"
    }
    
    // url 들어오고 어떤 타입의 탭을 보여주어야 하는지 설정
    var tabIdentifier: TabIdentifier? {
        guard isDeeplink else { return nil }
        
        switch host {
        case "todos":
            return .todos
        case "profile":
            return .profile
        default:
            return nil
        }
    }
    
    var detailPage: PageIdentifier? {
        guard let tabId = tabIdentifier,
              pathComponents.count > 1,
        let uuid = UUID(uuidString: pathComponents[1])
        else { return nil }
        
        switch tabId {
        case .todos:
            return .todoItem(id: uuid)
        default:
            return nil
        }
    }
}

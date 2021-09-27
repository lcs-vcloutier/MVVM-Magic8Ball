//
//  MVVM_Magic8BallApp.swift
//  watchOS WatchKit Extension
//
//  Created by Vincent Cloutier on 2021-09-26.
//

import SwiftUI

@main
struct MVVM_Magic8BallApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    ContentView()
                }
                .tabItem {
                    Image(systemName: "questionmark.circle.fill")
                    Text ("Ask")
                    
                }
                
                NavigationView {
                    HistoryView()
                }
                .tabItem {
                    Image(systemName: "clock.fill")
                    Text ("History")
                }
            }
        }
        WKNotificationScene(controller: NotificationController.self, category: "myCategory")
    }
}

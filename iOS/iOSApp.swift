//
//  iOSApp.swift
//  iOS
//
//  Created by Vincent Cloutier on 2021-09-26.
//

import SwiftUI

@main
struct iOSApp: App {
    
    // Make an instance of the view model to store questions and advice
    // Source of truth
    @StateObject private var advisor = AdviceViewModel()
    
    var body: some Scene {
        WindowGroup {
            TabView {
                NavigationView {
                    ContentView(advisor: advisor)
                }
                .tabItem {
                    Image(systemName: "questionmark.circle.fill")
                    Text ("Ask")
                    
                }
                
                NavigationView {
                    HistoryView(advisor: advisor)
                }
                .tabItem {
                    Image(systemName: "clock.fill")
                    Text ("History")
                }
            }        }
    }
}



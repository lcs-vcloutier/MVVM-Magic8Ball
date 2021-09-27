//
//  HistoryView.swift
//  iOS
//
//  Created by Vincent Cloutier on 2021-09-27.
//

import SwiftUI

struct HistoryView: View {
    // Look at source of truth in Magic8BallApp.swift
    @ObservedObject var advisor: AdviceViewModel
    
    var body: some View {
        // Show the list of questions and responses
        List(advisor.sessions.reversed()) { session in
            VStack(alignment: .leading) {
                Text(session.question)
                    .bold()
                Text(session.response)
            }
        }
        .padding()
        .navigationTitle("History")
    }
}

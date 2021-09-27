//
//  ContentView.swift
//  watchOS WatchKit Extension
//
//  Created by Vincent Cloutier on 2021-09-26.
//

import SwiftUI

struct ContentView: View {

    // Look at source of truth in Magic8BallApp.swift 
    @ObservedObject var advisor: AdviceViewModel
    
    // Stores the current question being asked
    @State private var input = ""
    
    // Stores the response to the given question
    @State private var output = ""
    
    var body: some View {
        VStack {
            TextField("Question",
                      text: $input,
                      prompt: Text("Ask a question"))

            // Get advice
            Button(action: {
                print("Shake button was pressed")
                output = advisor.provideResponseFor(givenQuery: input)
            }, label: {
                Text("Shake")
            })

            // Advice given
            Text(output)
                .multilineTextAlignment(.center)
                // Multiple lines as needed
                .fixedSize(horizontal: false, vertical: true)
            
        }
        .navigationTitle("Magic 8 Ball")
    }
}


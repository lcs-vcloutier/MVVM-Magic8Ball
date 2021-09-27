//
//  ContentView.swift
//  iOS
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
            
            // Advice given
            HStack {
                VStack(alignment: .leading) {
                    Text("**NOTE:**")
                    Text("Questions should be phrased in such that they can be answered with a yes or no response.")
                }
                Spacer()
            }

            // Ask a question
            TextField("Question",
                      text: $input,
                      prompt: Text("What do you need advice on?"))
            
            // Get advice
            Button(action: {
                print("Shake button was pressed")
                output = advisor.provideResponseFor(givenQuery: input)
            }, label: {
                Text("Shake")
            })
                .padding()
                // Return will trigger this button
                .keyboardShortcut(.defaultAction)
                // Only enable the button when a question is asked
                .disabled(!input.contains("?"))
            
            // Advice given
            Text(output)
            
                        
            Spacer()
        }
        .padding()
        .navigationTitle("Magic 8 Ball")
    }
}

//
//  Session.swift
//  MVVM-Magic8Ball
//
//  Created by Vincent Cloutier on 2021-09-26.
//

import Foundation



struct Session: Identifiable{
    
    // Unique ID for each session
    let id = UUID()
    
    // Question that the user asks, must be set to start an advice session
    let question: String
    
    // Response will be provided later
    var response: String = ""
    
}

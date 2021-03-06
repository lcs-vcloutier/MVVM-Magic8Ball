//
//  Magic8Ball.swift
//  MVVM-Magic8Ball
//
//  Created by Vincent Cloutier on 2021-09-26.
//

import Foundation

struct Magic8Ball {
    
    // Provides a random response to the user's question
    // NOTE: Since the method is 'static' no instance of Magic8Ball
    //       needs to be created to invoke the method.
    //       Essentially, a static method inside a structure is just
    //       an approach for tucking away some funtionality.
    static func getResponse() -> String {
        
        let responses = [
        "It is certain",
        "It is decidely so.",
        "Without a doubt.",
        "Yes definitely.",
        "You may rely on it.",
        "As I see it, yes.",
        "Most likely.",
        "Outlook good.",
        "Yes.",
        "Signs point to yes.",
        "Reply hazy, try again.",
        "Ask again later.",
        "Better not to tell you now.",
        "Cannot predict now.",
        "Concentrate and ask again.",
        "Don't count on it.",
        "My reply is no.",
        "My sources say no.",
        "Outlook not so good.",
        "Very doubtful.",
        ]
        
        return responses.randomElement()!
        
    }
    
}

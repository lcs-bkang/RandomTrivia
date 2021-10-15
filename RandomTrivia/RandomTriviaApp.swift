//
//  RandomTriviaApp.swift
//  RandomTrivia
//
//  Created by Brad Kang on 2021-10-07.
//

import SwiftUI

@main
struct RandomTriviaApp: App {
    
    var body: some Scene {
        
        WindowGroup {
            
            NavigationView {
                TriviaScreen()
            }
        }
    }
}

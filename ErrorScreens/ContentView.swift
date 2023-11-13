//
//  ContentView.swift
//  ErrorScreens
//
//  Created by Yunus Emre Taşdemir on 13.11.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ErrorScreen(errorType: .PageNotFound, buttonText: "Go Back") {
                    
                }
    }
}

#Preview {
    ContentView()
}

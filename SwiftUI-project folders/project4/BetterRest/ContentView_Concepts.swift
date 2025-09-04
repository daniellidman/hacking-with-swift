//
//  ContentView.swift
//  BetterRest
//
//  Created by Paul Hudson on 15/10/2023.
//

import CoreML
import SwiftUI

struct ContentView_Concepts: View {
    @State private var sleepAmount = 8.0
    
    var body: some View {
        Stepper("\(sleepAmount) hours", value: $sleepAmount, in: 4...12)
    }
}

#Preview {
    ContentView()
}

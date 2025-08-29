//
//  ContentView.swift
//  Views and Modifiers
//
//  Created by Daniel Lidman on 8/28/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }

        .padding()
    }
}

#Preview {
    ContentView()
}

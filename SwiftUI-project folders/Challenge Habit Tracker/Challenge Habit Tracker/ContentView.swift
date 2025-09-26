//
//  ContentView.swift
//  Challenge Habit Tracker
//
//  Created by Daniel Lidman on 9/26/25.
//

import SwiftUI

struct Activity {
    var activities: [String]
}

class AllHabits: Observable {
    var allHabits: [Activity]

    init(allHabits: [Activity]) {
        self.allHabits = allHabits
    }
}

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

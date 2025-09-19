//
//  ContentView.swift
//  Moonshot Daniel
//
//  Created by Daniel Lidman on 9/17/25.
//

import SwiftUI

struct ContentView: View {
    let layout = [
        GridItem(.adaptive(minimum: 80, maximum: 120)),
    ]

    var body: some View {
        ScrollView(.horizontal) {
            LazyHGrid(rows: layout) {
                ForEach(0 ..< 1000) {
                    Text("Item \($0)")
                }
            }
        }
    }
}

#Preview {
    ContentView()
}

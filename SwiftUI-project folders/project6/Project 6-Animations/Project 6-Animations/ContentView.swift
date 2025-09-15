//
//  ContentView.swift
//  Project 6-Animations
//
//  Created by Daniel Lidman on 9/12/25.
//

import SwiftUI

// struct ContentView: View {
//    @State private var animationAmount = 1.0
//
//    var body: some View {
//        Button("Tap Me") {
//            animationAmount += 1
//        }
//        .padding(50)
//        .background(.red)
//        .foregroundStyle(.white)
//        .clipShape(.circle)
//        .scaleEffect(animationAmount)
//        .animation(.default, value: animationAmount)
//    }
// }

struct ContentView: View {
    let letters = Array("Hello SwiftUI")
    @State private var enabled = false
    @State private var dragAmount = CGSize.zero

    var body: some View {
        HStack(spacing: 0) {
            ForEach(0 ..< letters.count, id: \.self) { num in Text(String(letters[num]))
                .padding(5)
                .font(.title)
                .background(enabled ? .blue : .red)
                .offset(dragAmount)
                .animation(.linear.delay(Double(num) / 20), value: dragAmount)
            }
        }
        .gesture(
            DragGesture()
                .onChanged { dragAmount = $0.translation }
                .onEnded { _ in
                    dragAmount = .zero
                    enabled.toggle()
                }
        )
    }
}

#Preview {
    ContentView()
}

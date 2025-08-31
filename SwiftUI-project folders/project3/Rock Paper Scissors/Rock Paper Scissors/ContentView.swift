//
//  ContentView.swift
//  Rock Paper Scissors
//
//  Created by Daniel Lidman on 8/30/25.
//

import SwiftUI

struct ContentView: View {
    @State private var moves = ["Rock", "Paper", "Scissors"]
    @State private var appChoice = Int.random(in: 0 ... 2)
    @State private var wantToWin = Bool.random()
    @State private var showingScore = false
    @State private var scoreTitle = ""
    @State private var scoreMessage = ""
    let emoji = ["🪨", "📄", "✂️"]

    var body: some View {
        ZStack {
            Color(.gray)
                .ignoresSafeArea()

            VStack {
                Text("Rock Paper Scissors")
                    .font(.largeTitle.bold())

                Text("What \(wantToWin ? "beats" : "loses to") \(moves[appChoice])?")
                HStack {
                    ForEach(0 ..< 3) { number in
                        Button {
                            moveTapped(number)
                        } label: {
                            Text(emoji[number])
                                .font(.largeTitle)
                        }
                    }
                    .padding()
                }
            }
        }
        .alert(scoreTitle, isPresented: $showingScore) {
            Button("Continue", action: askQuestion)
        } message: {
            Text(scoreMessage)
        }
    }

    func moveTapped(_ number: Int) {
        var correctAnswer = 0

        if appChoice == 0, wantToWin {
            correctAnswer = 1
        } else if appChoice == 0, !wantToWin {
            correctAnswer = 2
        } else if appChoice == 1, wantToWin {
            correctAnswer = 2
        } else if appChoice == 1, !wantToWin {
            correctAnswer = 0
        } else if appChoice == 2, wantToWin {
            correctAnswer = 0
        } else if appChoice == 2, !wantToWin {
            correctAnswer = 1
        }

        if number == correctAnswer {
            scoreTitle = "Correct!"

        } else {
            scoreTitle = "Incorrect!"
        }
        scoreMessage = "\(moves[correctAnswer]) \(wantToWin ? "beats" : "loses to") \(moves[appChoice])"
        showingScore = true
    }

    func askQuestion() {
        wantToWin.toggle()
        appChoice = Int.random(in: 0 ... 2)
    }
}

#Preview {
    ContentView()
}

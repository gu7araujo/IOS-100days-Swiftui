//
//  ContentView.swift
//  RockPaperScissors
//
//  Created by Gustavo Araujo Santos on 01/04/22.
//

import SwiftUI

struct Symbol: View {
    var systemName: String
    var text: String

    var body: some View {
        VStack {
            Image(systemName: systemName)
            Text(text)
        }
    }
}

struct ContentView: View {
    var possibleMoves = ["rock", "paper", "scissors"]
    var systemNameSymbols = ["globe.asia.australia.fill", "newspaper", "scissors"]

    @State private var machineChoice = Int.random(in: 0...2)
    @State private var shouldWin = Bool.random()

    @State private var scoreValue = 0
    @State private var attempts = 0

    @State private var showingScore = false

    var body: some View {
        VStack {
            Symbol(systemName: systemNameSymbols[machineChoice], text: possibleMoves[machineChoice])

            Text(shouldWin ? "Win" : "Lost")

            HStack {
                ForEach(possibleMoves, id: \.self) { move in
                    Button {
                        moveTapped(move)
                    } label: {
                        let index = possibleMoves.firstIndex(of: move) ?? -1
                        Symbol(systemName: systemNameSymbols[index], text: move)
                    }
                }
            }

            Text("Score \(scoreValue)")
        }
        .alert("End of the Game", isPresented: $showingScore) {
            Button("Reset Game", action: reset)
        } message: {
            Text("Your Score is \(scoreValue)")
        }
    }

    func reset() {
        scoreValue = 0
        attempts = 0
        machineChoice = Int.random(in: 0...2)
        shouldWin.toggle()
    }

    func moveTapped(_ move: String) {
        attempts += 1
        let machineChoiceName = possibleMoves[machineChoice]
        let userChoice = move
        var win = false

        if machineChoiceName == "rock" && userChoice == "paper" && shouldWin {
            win = true
        } else if machineChoiceName == "rock" && userChoice == "scissors" && !shouldWin {
            win = true
        }

        if machineChoiceName == "paper" && userChoice == "scissors" && shouldWin {
            win = true
        } else if machineChoiceName == "paper" && userChoice == "rock" && !shouldWin {
            win = true
        }

        if machineChoiceName == "scissors" && userChoice == "rock" && shouldWin {
            win = true
        } else if machineChoiceName == "scissors" && userChoice == "paper" && !shouldWin {
            win = true
        }

        if win {
            scoreValue += 1
        } else {
            scoreValue = scoreValue == 0 ? 0 : scoreValue - 1
        }

        if attempts == 10 {
            showingScore = true
        } else {
            machineChoice = Int.random(in: 0...2)
            shouldWin.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  iExpense
//
//  Created by Gustavo Araujo Santos on 13/04/22.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("TapCount") private var tapCount = 0

    var body: some View {
        Button("Tap count: \(tapCount)") {
            tapCount += 1
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

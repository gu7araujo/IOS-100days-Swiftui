//
//  ContentView.swift
//  ViewsAndModifiers
//
//  Created by Gustavo Araujo Santos on 30/03/22.
//

import SwiftUI

struct ContentView: View {
    var motto1: some View {
        Text("Draco dormiens")
    }

    let motto2 = Text("nunquam titillandus")

    @ViewBuilder var spells: some View {
        VStack {
            Text("Lumos")
            Text("Obliviate")
        }
    }

    var body: some View {
        spells
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

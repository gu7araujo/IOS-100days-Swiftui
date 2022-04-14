//
//  ContentView.swift
//  iExpense
//
//  Created by Gustavo Araujo Santos on 13/04/22.
//

import SwiftUI

struct SecondView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        Button("dismiss") {
            dismiss()
        }
    }
}

struct ContentView: View {
    @State private var showingSecondView = false

    var body: some View {
        Button("Show second view") {
            showingSecondView.toggle()
        }.sheet(isPresented: $showingSecondView) {
            SecondView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

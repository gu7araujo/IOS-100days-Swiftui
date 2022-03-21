 //
//  ContentView.swift
//  WeSplit
//
//  Created by Gustavo Araujo Santos on 21/03/22.
//

import SwiftUI

struct ContentView: View {
    let students = ["Gustavo", "Iago", "Harry"]
    @State private var selectedStudent = "Gustavo"

    var body: some View {
        NavigationView {
            Form {
                Picker("Select your student", selection: $selectedStudent) {
                    ForEach(students, id: \.self) {
                        Text($0)
                    }
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  Moonshot
//
//  Created by Gustavo Araujo Santos on 18/04/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        GeometryReader { geo in
            Image("example")
                .resizable()
                .scaledToFit()
                .frame(width: geo.size.width * 0.8)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  ContentView.swift
//  Animation
//
//  Created by Gustavo Araujo Santos on 11/04/22.
//

import SwiftUI

struct ContentView: View {
    @State private var animationAmount = 1.0

    var body: some View {
        Button("tap me") {
//            animationAmount += 1
        }
        .padding(50)
        .background(.red)
        .foregroundColor(.white)
        .clipShape(Circle())
        .overlay(
            Circle()
                .stroke(.red)
                .scaleEffect(animationAmount)
                .opacity(2 - animationAmount)
                .blur(radius: (animationAmount - 1) * 3)
                .animation(.easeInOut(duration: 1).repeatForever(autoreverses: false), value: animationAmount)
        )
        .onAppear {
            animationAmount = 2
        }

    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

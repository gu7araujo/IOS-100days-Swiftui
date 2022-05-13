//
//  BookwormApp.swift
//  Bookworm
//
//  Created by Gustavo Araujo Santos on 12/05/22.
//

import SwiftUI

@main
struct BookwormApp: App {
    let persistenceContainer = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceContainer.container.viewContext)
        }
    }
}

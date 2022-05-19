//
//  CoreDataProjectApp.swift
//  CoreDataProject
//
//  Created by Gustavo Araujo Santos on 17/05/22.
//

import SwiftUI

@main
struct CoreDataProjectApp: App {
    let persistenceContainer = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceContainer.container.viewContext)
        }
    }
}

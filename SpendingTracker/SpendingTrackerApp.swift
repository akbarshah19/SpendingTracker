//
//  SpendingTrackerApp.swift
//  SpendingTracker
//
//  Created by Akbarshah Jumanazarov on 10/12/24.
//

import SwiftUI

@main
struct SpendingTrackerApp: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}

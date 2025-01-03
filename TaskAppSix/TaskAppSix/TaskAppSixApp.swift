//
//  TaskAppSixApp.swift
//  TaskAppSix
//
//  Created by Uri on 3/1/25.
//

import SwiftUI
import SwiftData

@main
struct TaskAppSixApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([MyTasks.self])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}

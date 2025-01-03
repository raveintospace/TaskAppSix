//
//  SampleData.swift
//  TaskAppSix
//
//  Created by Uri on 3/1/25.
//

import SwiftUI
import SwiftData

struct SampleData: PreviewModifier {
    
    // modelContainer for testing - isStoredInMemoryOnly has to be true
    static func makeSharedContext() async throws -> ModelContainer {
        let schema = Schema([MyTasks.self])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: true)
        let container = try ModelContainer(for: schema, configurations: [modelConfiguration])
        
        let task1 = MyTasks(
            id: UUID(),
            title: "First task",
            details: "A task to test SwiftData",
            createdAt: .now,
            status: .inprogress
        )
        
        let task2 = MyTasks(
            id: UUID(),
            title: "Second task",
            details: "Another task to test SwiftData",
            createdAt: .now,
            status: .pending
        )
        
        container.mainContext.insert(task1)
        container.mainContext.insert(task2)
        
        return container
    }
    
    // content (view) / context based on a modelContainer (MyTasks)
    func body(content: Content, context: ModelContainer) -> some View {
        content.modelContainer(context)
    }
}

//
//  DataModel.swift
//  TaskAppSix
//
//  Created by Uri on 3/1/25.
//

import Foundation
import SwiftData

enum TaskStatus: String, Codable, CaseIterable {
    case pending
    case inprogress
    case completed
}

@Model
final class MyTasks {
    @Attribute(.unique) var id: UUID        // ensures the id's value is unique across all models of same type
    var title: String
    var details: String
    var createdAt: Date
    var status: TaskStatus
    
    init(id: UUID, title: String, details: String, createdAt: Date, status: TaskStatus) {
        self.id = id
        self.title = title
        self.details = details
        self.createdAt = createdAt
        self.status = status
    }
}

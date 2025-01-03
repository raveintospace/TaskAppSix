//
//  ContentView.swift
//  TaskAppSix
//  https://www.youtube.com/live/TNrqH-sm4q4?si=gj9AhvPZMoAD7OLi
//  Created by Uri on 3/1/25.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @Query private var myTasks: [MyTasks]
    
    var body: some View {
        List(myTasks) { myTask in
            VStack {
                Text(myTask.title)
                Text(myTask.details)
            }
        }
    }
}

#Preview(traits: .sampleData){
    ContentView()
}

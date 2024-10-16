//
//  ToDoListApp.swift
//  ToDoList
//
//  Created by Anora Zhu on 10/15/24.
//

import SwiftUI
import SwiftData

@main
struct ToDoListApp: App {
    var body: some Scene {
        WindowGroup {
            ToDoListView()
                .modelContainer(for: ToDo.self)
        }
    }
    // will allow us to find where our simulator data is saved:
    init() {
        print(URL.applicationDirectory.path(percentEncoded: false))
    }
 }

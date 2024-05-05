//
//  ToDo_Training2024App.swift
//  ToDo_Training2024
//
//  Created by Elizabeth Aguerrevere on 5/5/24.
//

import SwiftUI
import SwiftData

@main
struct ToDo_Training2024App: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .modelContainer(for: ToDoItem.self)
        } //closes WindowGroup
    } //closes body
} //closes struct

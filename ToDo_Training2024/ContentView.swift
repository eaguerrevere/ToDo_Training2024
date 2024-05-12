//
//  ContentView.swift
//  ToDo_Training2024
//
//  Created by Elizabeth Aguerrevere on 5/5/24.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    
    @State private var showNewTask = false
    @Query var toDos: [ToDoItem]
    @Environment(\.modelContext) var modelContext
    
    var body: some View {
        
        VStack {
            HStack {
                
                Text("To Do List")
                     .font(.system(size: 40))
                     .fontWeight(.black)
                
                Spacer()
                
                Button {
                    
                    withAnimation {
                        
                        self.showNewTask = true
                    } //closes withAnimation

                } label: {
                    Text("+")
                } //closes label of button
                
            } //closes HStack
            
            .padding()
            
            Spacer()
            
            List {
                
                ForEach(toDos) { toDoItem in
                    if toDoItem.isImportant == true {
                        Text("‼️" + toDoItem.title)
                    } else {
                        Text(toDoItem.title)
                    } //end of if else
                    
                } //closes ForEach
                .onDelete(perform: deleteToDo)
                
            } //closes List
            .listStyle(.plain)
            
        } //closes VStack
        
        if showNewTask {
            NewToDoView(toDoItem: ToDoItem(title: "", isImportant: false), showNewTask: $showNewTask)
        } //closes if statement

    } //closes body
    
    func deleteToDo(at offsets: IndexSet) {
        for offset in offsets {
            let toDoItem = toDos[offset]
            modelContext.delete(toDoItem)
        }
    } //closes deleteToDo func
    
} //closes ContentView struct

#Preview {
    ContentView()
}

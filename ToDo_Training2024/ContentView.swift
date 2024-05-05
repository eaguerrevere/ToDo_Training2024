//
//  ContentView.swift
//  ToDo_Training2024
//
//  Created by Elizabeth Aguerrevere on 5/5/24.
//

import SwiftUI

struct ContentView: View {
    
    @State private var showNewTask = false
    
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
            
        } //closes VStack
        
        if showNewTask {
            NewToDoView()
        } //closes if statement

    } //closes body
} //closes ContentView struct

#Preview {
    ContentView()
}

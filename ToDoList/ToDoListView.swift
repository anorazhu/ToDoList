//
//  ContentView.swift
//  ToDoList
//
//  Created by Anora Zhu on 10/15/24.
//

import SwiftUI

struct ToDoListView: View {
    var toDos = ["Learn Swift",
                 "Build Apps",
                 "Change the World",
                 "Bring the Awesome",
                 "Take a Vacation"]
    
    var body: some View {
        NavigationStack {
            List {
                ForEach(toDos, id: \.self) { toDo in
                    NavigationLink {
                        DetailView(passedValue:(toDo))
                    } label: {
                        Text("Item \(toDo)")
                    }
                    
                }
                
            }
            .navigationTitle("ToDo List")
            .navigationBarTitleDisplayMode(.automatic)
            .listStyle(.plain)
        }
    }
}

#Preview {
    ToDoListView()
}

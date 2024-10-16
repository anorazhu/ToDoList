//
//  ContentView.swift
//  ToDoList
//
//  Created by Anora Zhu on 10/15/24.
//

import SwiftUI

struct ToDoListView: View {
    @State private var sheetIsPresented = false
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
                        DetailView(toDo:toDo)
                    } label: {
                        Text("Item \(toDo)")
                    }
                    .font(.title2)
                    
                }
                
            }
            .navigationTitle("ToDo List")
            .navigationBarTitleDisplayMode(.automatic)
            .listStyle(.plain)
            .sheet(isPresented: $sheetIsPresented) {
                NavigationStack {
                    DetailView(toDo: "")
                }
            }
            .toolbar{
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        sheetIsPresented.toggle()
                    } label: {
                        Image(systemName: "plus")
                    }

                }
            }
        }
    }
}

#Preview {
    ToDoListView()
}

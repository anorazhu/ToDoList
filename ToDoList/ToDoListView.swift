//
//  ContentView.swift
//  ToDoList
//
//  Created by Anora Zhu on 10/15/24.
//

import SwiftUI

struct ToDoListView: View {
    var body: some View {
        NavigationStack {
            VStack {
                NavigationLink {
                    DetailView()
                } label: {
                    Image(systemName: "eye")
                    Text("Show the new View!")
                }
                .buttonStyle(.borderedProminent)

            }
            .padding()
        }
    }
}

#Preview {
    ToDoListView()
}

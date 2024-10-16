//
//  DetailView.swift
//  ToDoList
//
//  Created by Anora Zhu on 10/15/24.
//

import SwiftUI

struct DetailView: View {
    var passedValue: String // Don't initialize it - it will be passsed form the parent view
    @Environment(\.dismiss) private var dismiss
    
    var body: some View {
        VStack {
            Image(systemName: "swift")
                .resizable()
                .scaledToFit()
                .foregroundStyle(.orange)
            
            Text("You Are a Swifty Legend! \nAnd you passed over the value \(passedValue)")
                .font(.largeTitle)
            
            Spacer()
            
            Button("Get Back") {
                dismiss()
            }
            .buttonStyle(.borderedProminent)
        }
        .padding()

    }
}

#Preview {
    DetailView(passedValue: "Item 1")
}

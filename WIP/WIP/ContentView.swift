//
//  ContentView.swift
//  WIP
//
//  Created by Marc Köhlbrugge on 6/27/23.
//

import SwiftUI

struct Todo: Identifiable {
    let id: Int
    let body: String
}

struct ContentView: View {
    @State private var todos: [Todo] = []

    var body: some View {
        .onAppear {
            Network.shared.apollo.fetch(query: WIPSchema.PendingTodosQuery()) { [weak self] result in
                switch result {
                case .success(let graphQLResult):
                    if let pendingTodos = graphQLResult.data?.pendingTodos {
                        let todos = pendingTodos.map { Todo(id: $0.id, title: $0.body) }
                        DispatchQueue.main.async {
                            self?.todos = todos
                        }
                    } else if let errors = graphQLResult.errors {
                        // Handle server errors
                        print("Errors: \(errors)")
                    }
                case .failure(let error):
                    // Handle client errors
                    print("Error: \(error)")
                }
            }
        }
        
        List(todos) { todo in
            Text(todo.body)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

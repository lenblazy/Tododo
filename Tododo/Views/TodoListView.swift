//
//  ContentView.swift
//  Tododo
//
//  Created by Lennox Mwabonje on 17/06/2023.
//

import SwiftUI
import RealmSwift

struct TodoListView: View {
    
    @ObservedResults(Todo.self) var todos
    @State private var name = ""
    @FocusState private var focus: Bool?
    
    var body: some View {
       
        NavigationView {
            VStack {
                
                HStack {
                    TextField("New Todo", text: $name)
                        .textFieldStyle(.roundedBorder)
                        .focused($focus, equals: true)
                    Spacer()
                    Button {
                        let newTodo = Todo(name: name)
                        $todos.append(newTodo)
                        name = ""
                        focus = nil
                    } label: {
                        Image(systemName: "plus.circle.fill")
                    }
                    .disabled(name.isEmpty)
                }
                .padding()
                
                List {
                    ForEach(todos) { todo in
                        TodoListRow(todo: todo)
                    }
                    .onDelete(perform: $todos.remove)
                    .listRowSeparator(.hidden)
                }
                .listStyle(.plain)
            }
            .navigationTitle("Realm Todos")
        }
        
    }
}

struct TodoListView_Previews: PreviewProvider {
    static var previews: some View {
        TodoListView()
    }
}

//
//  ContentView.swift
//  Tododo
//
//  Created by Lennox Mwabonje on 17/06/2023.
//

import SwiftUI
import RealmSwift

struct TodoListView: View {
    
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            Text("Hello, world!")
        }
        .padding()
        
        
    }
}

struct TodoListView_Previews: PreviewProvider {
    static var previews: some View {
        TodoListView()
    }
}

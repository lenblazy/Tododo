//
//  TododoApp.swift
//  Tododo
//
//  Created by Lennox Mwabonje on 17/06/2023.
//

import SwiftUI

@main
struct TododoApp: App {
    var body: some Scene {
        WindowGroup {
            TodoListView()
                .onAppear{
                    print(FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first!.path)
                }
            
        }
    }
}

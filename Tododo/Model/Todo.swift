//
//  Todo.swift
//  Tododo
//
//  Created by Lennox Mwabonje on 18/06/2023.
//

import SwiftUI
import RealmSwift

class Todo: Object, ObjectKeyIdentifiable {
    @Persisted(primaryKey: true) var id: ObjectId
    @Persisted var name: String
    @Persisted var completed = false
    @Persisted var urgency: Urgency = .neutral
    
    enum Urgency: Int, PersistableEnum {
        case trivial, neutral, urgent
        
        var text: String {
            switch self{
            case .trivial:
                return "Trivial"
            case .neutral:
                return "Neutral"
            case .urgent:
                return "Urgent"
            }
        }
        
        var color: Color{
            switch self{
            case .trivial:
                return .teal
            case .neutral:
                return .secondary
            case .urgent:
                return .red
            }
        }
    }
    
    func increment() -> Urgency{
        switch urgency {
        case .trivial:
            return .neutral
        case .neutral:
            return .urgent
        case .urgent:
            return .trivial
        }
    }
    
    convenience init(name: String) {
        self.init()
        self.name = name
    }
    
}

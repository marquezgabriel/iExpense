//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Gabriel Marquez on 2022-06-18.
//

import Foundation

// to represent a single expence
struct ExpenseItem: Identifiable, Codable {
    // generate UUID automatically
    var id = UUID()
    // let id: UUID
    let name: String
    let type: String
    let amount: Int
}

// class to store an array of all those items from the struct
class Expenses: ObservableObject {
    
    init() {
        if let savedItems = UserDefaults.standard.data(forKey: "Items") {
            if let decodedItems = try? JSONDecoder().decode([ExpenseItem].self, from: savedItems) {
                items = decodedItems
                return
            }
        }

        items = []
    }
    
    @Published var items = [ExpenseItem]() {
        didSet {
            if let encoded = try? JSONEncoder().encode(items) {
                UserDefaults.standard.set(encoded, forKey: "Items")
            }
        }
    }
}

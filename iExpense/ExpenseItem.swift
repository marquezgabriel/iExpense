//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Gabriel Marquez on 2022-06-18.
//

import Foundation

// to represent a single expence
struct ExpenseItem: Identifiable {
    // generate UUID automatically
    let id = UUID()
    // let id: UUID
    let name: String
    let type: String
    let amount: Int
}

// class to store an array of all those items from the struct
class Expenses: ObservableObject {
    @Published var items = [ExpenseItem]()
}

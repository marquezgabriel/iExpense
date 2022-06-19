//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Gabriel Marquez on 2022-06-18.
//

import Foundation

// to represent a single expence
struct ExpenseItem: Identifiable, Codable, Equatable {
    var id = UUID()
    let name: String
    let type: String
    let amount: Double
}

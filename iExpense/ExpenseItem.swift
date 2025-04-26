//
//  ExpenseItem.swift
//  iExpense
//
//  Created by Zi on 26/04/2025.
//

import Foundation

struct ExpenseItem: Identifiable {
    let id = UUID()
    let name: String
    let type: String
    let amount: Double
}

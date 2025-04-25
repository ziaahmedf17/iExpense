//
//  Expenses.swift
//  iExpense
//
//  Created by Zi on 26/04/2025.
//

import Foundation

class Expenses: ObservableObject
{
    @Published var items = [ExpenseItem]()
}

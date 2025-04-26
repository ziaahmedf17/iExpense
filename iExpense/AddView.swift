//
//  AddView.swift
//  iExpense
//
//  Created by Zi on 27/04/2025.
//

import SwiftUI

struct AddView: View {
    @ObservedObject var expenses: Expenses
    
    @State private var name = ""
    @State private var type = "Personal"
    @State private var amount = 0.0
    
    
    let types = ["Business", "Personal"]
    
    
    var body: some View {
        NavigationView {
            Form {
                TextField( "Name", text: $name)
                Picker("Type", selection: $type)
                {
                    ForEach(types, id: \.self) {
                        Text($0)
                }
            }
            TextField( "Amount", value: $amount, format: .currency (code: "USD" ))
                    .keyboardType(.decimalPad)
                }
            .navigationTitle("Add New Expense")
            }
        }
}

#Preview {
    AddView(expenses: Expenses())
}

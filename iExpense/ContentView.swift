//
//  ContentView.swift
//  iExpense
//
//  Created by Zi on 24/04/2025.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var expenses = Expenses ()
    @State private var showingAddExpense = false
    
    var body: some View {
        NavigationView
        {
            List{
                ForEach(expenses.items){ item in
                    Text(item.name)
                }.onDelete(perform: removeltems)
                
            }.navigationTitle("iExpenses")
                .toolbar{
                    Button{
//                        let expense = ExpenseItem(name: "Test", type: "Personal", amount: 5)
//                        expenses.items.append(expense)
                        showingAddExpense = true
                    }label: {
                        Image(systemName: "plus")
                    }
                }
                .sheet(isPresented: $showingAddExpense)
            {
                AddView(expenses: expenses)
            }
        }
    }
    
    func removeltems(at offsets: IndexSet) {
    expenses.items.remove(atOffsets: offsets)
    }
}

#Preview {
    ContentView()
}

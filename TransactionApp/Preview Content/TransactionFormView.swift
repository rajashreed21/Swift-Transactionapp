//
//  TransactionFormView.swift
//  TransactionApp
//
//  Created by RPS on 11/06/24.
//

import SwiftUI

struct TransactionFormView: View {
    @State private var date = ""
    @State private var description = ""
    @State private var amount = ""
    @State private var isExpense = true
    
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Transaction Details")) {
                    TextField("Date", text: $date)
                    TextField("Description", text: $description)
                    TextField("Amount", text: $amount)
                        .keyboardType(.decimalPad)
                }
                
                Section(header: Text("Category")) {
                    Picker(selection: $isExpense, label: Text("Category")) {
                        Text("Expense").tag(true)
                        Text("Income").tag(false)
                    }
                    .pickerStyle(SegmentedPickerStyle())
                }
                
                Section {
                    Button(action: {
                        // Add transaction logic
                    }) {
                        Text("Add Transaction")
                    }
                }
            }
            .navigationBarTitle("New Transaction")
        }
    }
}



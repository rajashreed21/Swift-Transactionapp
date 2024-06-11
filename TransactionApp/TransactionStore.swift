//
//  TransactionStore.swift
//  TransactionApp
//
//  Created by RPS on 11/06/24.
//

import Foundation

import SwiftUI
import Combine

class TransactionStore: ObservableObject {
    @Published var transactions: [Transaction]
    
    init() {
        self.transactions = [
            Transaction(date: "2024-06-11", description: "Salary", amount: 10000),
            Transaction(date: "2024-06-10", description: "Groceries", amount: -2550),
            Transaction(date: "2024-06-09", description: "Dinner", amount: -250),
            Transaction(date: "2024-06-08", description: "Lunch", amount: -150)
        ]
    }
}

//
//  TransactionListView.swift
//  TransactionApp
//
//  Created by RPS on 11/06/24.
//

import SwiftUI

struct TransactionListView: View {
   @EnvironmentObject var store: TransactionStore
   
   var body: some View {
       NavigationView {
           List {
               ForEach(store.transactions) { transaction in
                   TransactionRow(transaction: transaction)
               }
               .onDelete(perform: deleteTransaction)
           }
           .navigationBarTitle("Transactions")
           .navigationBarItems(trailing: EditButton())
       }
   }
   
   private func deleteTransaction(at offsets: IndexSet) {
       store.transactions.remove(atOffsets: offsets)
   }
}


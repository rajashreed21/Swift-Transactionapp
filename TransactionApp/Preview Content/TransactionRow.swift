//
//  TransactionRow.swift
//  TransactionApp
//
//  Created by RPS on 11/06/24.
//

import SwiftUI

struct TransactionRow: View {
  var transaction: Transaction
  
  var body: some View {
      HStack {
          Text(transaction.date)
          Text(transaction.description)
          Spacer()
          Text("rs\(transaction.amount)")
      }
  }
}

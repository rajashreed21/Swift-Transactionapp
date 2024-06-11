//
//  Transaction.swift
//  TransactionApp
//
//  Created by RPS on 11/06/24.
//

import Foundation

import SwiftUI

struct Transaction: Identifiable {
    var id = UUID()
    var date: String
    var description: String
    var amount: Double
}

//
//  TransactionAppApp.swift
//  TransactionApp
//
//  Created by RPS on 11/06/24.
//

import SwiftUI

@main
struct TransactionAppApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView().environmentObject(TransactionStore())
        }
    }
}

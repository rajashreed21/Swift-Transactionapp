//
//  DashboardView.swift
//  TransactionApp
//
//  Created by RPS on 11/06/24.
//


import SwiftUI

struct DashboardView: View {
    var body: some View {
        VStack {
            Text("Current Balance")
                .font(.title)
                .foregroundColor(Color.pink)
                .padding()
            Text("rs 5000")
                .font(.headline)
            Spacer()
            Text("Spending Trends")
                .font(.title)
                .foregroundColor(Color.pink)
                .padding()
                
            // Add charts or graphs to display spending trends
        }
        .navigationBarTitle("Dashboard")
        
        
    }
}


//
//  ContentView.swift
//  TransactionApp
//
//  Created by RPS on 11/06/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            TabView {
                TransactionListView()
                    .tabItem {
                        Image(systemName: "list.dash")
                        Text("Transactions")
                    }
                    .tag(0)
                
                DashboardView()
                    .tabItem {
                        Image(systemName: "chart.bar.fill")
                        Text("Dashboard")
                    }
                    .tag(1)
                
                TransactionFormView()
                    .tabItem {
                        Image(systemName: "plus.circle.fill")
                        Text("New Transaction")
                    }
                    .tag(2)
            }
        }
    }
}

struct AdaptiveView: View {
    @Environment(\.colorScheme) var colorScheme

    var body: some View {
        VStack {
            Text("Adaptive UI")
                .font(.largeTitle)
                .padding()

            if colorScheme == .dark {
                Text("Dark Mode")
                    .foregroundColor(.white)
            } else {
                Text("Light Mode")
            }
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(TransactionStore())
    }
}



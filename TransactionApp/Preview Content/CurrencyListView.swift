//
//  CurrencyListView.swift
//  TransactionApp
//
//  Created by RPS on 12/06/24.
//

import SwiftUI

struct CurrencyListView: View {
    @State private var exchangeRates: [ExchangeRate] = []

    var body: some View {
        List(exchangeRates) { rate in
            Text("\(rate.currency): \(rate.rate)")
        }
        .onAppear {
            fetchExchangeRates()
        }
    }

    private func fetchExchangeRates() {
        guard let url = URL(string: "YOUR_API_ENDPOINT") else { return }

        URLSession.shared.dataTask(with: url) { data, response, error in
            guard let data = data else { return }
            do {
                let rates = try JSONDecoder().decode([ExchangeRate].self, from: data)
                DispatchQueue.main.async {
                    self.exchangeRates = rates
                }
            } catch {
                print("Error decoding exchange rates: \(error)")
            }
        }.resume()
    }
}

struct ExchangeRate: Codable,Identifiable {
    let id: UUID
    let currency: String
    let rate: Double
}


//
//  HomeHeaderView.swift
//  N26Clone
//
//  Created by Fabian Gröger on 21.01.21.
//

import SwiftUI

struct HomeHeaderView: View {
    let viewModel: HomeHeaderViewModel
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                Text("Home")
                    .font(.title)
                    .fontWeight(.medium)
                
                Spacer()
                
                HStack {
                    Button(action: {}) {
                        Image(systemName: "magnifyingglass")
                    }
                    .foregroundColor(.primary)
                    
                    Button(action: {}) {
                        Image(systemName: "list.bullet")
                    }
                    .foregroundColor(.primary)
                    
                    Divider()
                        .frame(height: 20)
                    
                    Button(action: {}) {
                        Image(systemName: "person")
                    }
                    .foregroundColor(.primary)
                }
                .imageScale(.large)
            }
            
            Spacer()
                .frame(height: 16)
            
            Text(viewModel.balance)
                .font(.largeTitle)
                .bold()
            
            Spacer()
                .frame(height: 12)
            
            HStack {
                Image(systemName: "eye")
                
                Text("Aktueller Kontostand")
                    .foregroundColor(.secondary)
            }
        }
    }
}

struct HomeHeaderViewModel {
    let balance: String
    
    init(balance: Decimal) {
        let currencyFormatter = NumberFormatter()
        currencyFormatter.numberStyle = .currency
        currencyFormatter.locale = Locale(identifier: "de_DE")
        currencyFormatter.currencySymbol = "€"
        
        self.balance = currencyFormatter.string(from: balance as NSDecimalNumber) ?? "0 €"
    }
}

struct HomeHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        let viewModel = HomeHeaderViewModel(balance: 66.62)
        HomeHeaderView(viewModel: viewModel)
            .preferredColorScheme(.dark)
    }
}

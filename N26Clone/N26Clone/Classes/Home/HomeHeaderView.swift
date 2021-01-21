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
                    Image(systemName: "magnifyingglass")
                    
                    Image(systemName: "list.bullet")
                    
                    Divider()
                        .frame(height: 20)
                    
                    Image(systemName: "person")
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

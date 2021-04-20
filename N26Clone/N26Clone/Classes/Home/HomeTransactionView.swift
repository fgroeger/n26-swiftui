//
//  HomeTransactionView.swift
//  N26Clone
//
//  Created by Fabian Gröger on 20.04.21.
//

import SwiftUI

struct HomeTransactionView: View {
    var body: some View {
        HStack(alignment: .center) {
            Circle()
                .frame(width: 64, height: 64)
                .foregroundColor(.red)
            
            VStack(alignment: .leading, spacing: 4) {
                Text("REWE")
                    .font(.body)
                
                Text("20. Apr. - Hamburg")
                    .font(.callout)
                    .foregroundColor(.secondary)
            }
            
            Spacer()
            
            Text("-9,14 €")
        }
    }
}

struct HomeTransactionView_Previews: PreviewProvider {
    static var previews: some View {
        HomeTransactionView()
    }
}

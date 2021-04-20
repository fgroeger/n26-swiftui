//
//  HomeView.swift
//  N26Clone
//
//  Created by Fabian Gröger on 21.01.21.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var viewModel: HomeViewModel
    
    var body: some View {
        VStack {
            HomeHeaderView(viewModel: viewModel.headerViewModel)
                .padding()
            
            ScrollView {
                LazyVStack(alignment: .leading) {
                    HomeHeaderButtonsView()
                    
                    // TODO: Show transactions
                    ForEach(1..<100) { i in
                        if ((i % .random(in: 1...10)) == 0) {
                            Text("10. Januar")
                                .font(.headline)
                                .bold()
                                .padding()
                        }
                        
                        HomeTransactionView()
                            .padding()
                    }
                }
            }
        }
    }
}

// MARK: - ViewModel

final class HomeViewModel: ObservableObject {
    @Published var headerViewModel: HomeHeaderViewModel
    
    init() {
        self.headerViewModel = HomeHeaderViewModel(balance: 0)
    }
}

// MARK: - Preview

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(viewModel: HomeViewModel())
    }
}

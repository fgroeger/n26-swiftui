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
            
            Spacer()
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

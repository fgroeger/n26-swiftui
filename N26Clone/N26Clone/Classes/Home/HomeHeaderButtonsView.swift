//
//  HomeHeaderButtonsView.swift
//  N26Clone
//
//  Created by Fabian Gröger on 20.04.21.
//

import SwiftUI

struct HomeHeaderButtonsView: View {
    var body: some View {
        HStack(spacing: 0) {
            HomeCircleButton(
                viewModel: HomeCircleButtonModel(
                    color: .accentColor,
                    icon: Image(systemName: "plus"),
                    title: "Geld erhalten"
                )
            )
            .frame(minWidth: 0, maxWidth: .infinity)
            
            HomeCircleButton(
                viewModel: HomeCircleButtonModel(
                    color: .accentColor,
                    icon: Image(systemName: "arrow.right"),
                    title: "Geld senden"
                )
            )
            .frame(minWidth: 0, maxWidth: .infinity)
            
            HomeCircleButton(
                viewModel: HomeCircleButtonModel(
                    color: .clear,
                    icon: Image(systemName: "calendar"),
                    iconColor: .primary,
                    title: "Geplant"
                )
            )
            .frame(minWidth: 0, maxWidth: .infinity)
            
            HomeCircleButton(
                viewModel: HomeCircleButtonModel(
                    color: .clear,
                    icon: Image(systemName: "chart.pie"),
                    iconColor: .primary,
                    title: "Statistik"
                )
            )
            .frame(minWidth: 0, maxWidth: .infinity)
        }
    }
}

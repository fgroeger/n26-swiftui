//
//  HomeCircleButton.swift
//  N26Clone
//
//  Created by Fabian Gröger on 22.01.21.
//

import SwiftUI

struct HomeCircleButton: View {
    let viewModel: HomeCircleButtonModel
    
    var body: some View {
        VStack(alignment: .center) {
            ZStack(alignment: .center) {
                Button(action: viewModel.onTapped) {
                    Circle()
                        .frame(width: 64, height: 64)
                        .foregroundColor(viewModel.color)
                        .background(Circle().stroke(Color(.systemGray4)))
                        .onTapGesture(perform: viewModel.onTapped)
                }
                
                viewModel.icon
                    .resizable()
                    .frame(width: 24, height: 24)
                    .foregroundColor(viewModel.iconColor)
            }
            
            Text(viewModel.title)
                .font(.caption)
                .fontWeight(.medium)
        }
    }
}

struct HomeCircleButtonModel {
    let color: Color
    let icon: Image
    let iconColor: Color
    let title: String
    let onTapped: () -> Void
    
    init(
        color: Color,
        icon: Image,
        iconColor: Color = .white,
        title: String,
        onTapped: @escaping () -> Void = {}
    ) {
        self.color = color
        self.icon = icon
        self.iconColor = iconColor
        self.title = title
        self.onTapped = onTapped
    }
}

struct HomeCircleButton_Previews: PreviewProvider {
    static var previews: some View {
        HomeCircleButton(
            viewModel: HomeCircleButtonModel(
                color: .accentColor,
                icon: Image(systemName: "plus"),
                title: "Geld erhalten",
                onTapped: { print("Tapped") }
            )
        )
    }
}

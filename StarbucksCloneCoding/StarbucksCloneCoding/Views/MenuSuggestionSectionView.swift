//
//  MenuSuggestionSectionView.swift
//  StarbucksCloneCoding
//
//  Created by 이예은 on 2023/04/08.
//

import SwiftUI

struct MenuSuggestionSectionView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 20) {
                ForEach(Beverage.recommend) { menu in
                    MenuSuggestionItemView(coffeeMenu: menu)
                }
            }
            .padding(.horizontal, 20)
        }
    }
}

struct MenuSuggestionItemView: View {
    let coffeeMenu: Beverage
    
    var body: some View {
        VStack(spacing: 15) {
            if let image = coffeeMenu.thumbnailImage {
                image
                    .resizable()
                    .clipShape(Circle())
                    .frame(height: 130.0)
                    .clipped()
            }
            
            Text(coffeeMenu.koreanName)
                .font(.callout)
                .lineLimit(2)
                .multilineTextAlignment(.center)
        }
        .frame(width: 120)
    }
}

struct MenuSuggestionSectionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuSuggestionSectionView()
    }
}


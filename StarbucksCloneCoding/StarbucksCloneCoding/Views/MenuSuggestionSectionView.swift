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
            LazyHStack {
                ForEach(Beverage.recommend) { menu in
                    MenuSuggestionItemView(coffeeMenu: menu)
                }
            }
        }
    }
}

struct MenuSuggestionItemView: View {
    let coffeeMenu: Beverage
    
    var body: some View {
        VStack {
            if let image = coffeeMenu.thumbnailImage {
                image
                    .resizable()
                    .clipShape(Circle())
                    .frame(width: 130.0, height: 130.0)
            }
            
            Text(coffeeMenu.koreanName)
                .font(.callout)
        }
    }
}

struct MenuSuggestionSectionView_Previews: PreviewProvider {
    static var previews: some View {
        MenuSuggestionSectionView()
    }
}


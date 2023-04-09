//
//  BannerView.swift
//  StarbucksCloneCoding
//
//  Created by 이예은 on 2023/04/08.
//

import SwiftUI

struct BannerSectionView: View {
    var body: some View {
        ScrollView(.horizontal) {
            LazyHStack(spacing: 20) {
                ForEach(Banner.MainBanner.allCases) { banner in
                    BannerItemView(banner: banner)
                }
            }
            .padding(.horizontal, 20)
        }
    }
}

struct BannerItemView: View {
    let banner: Banner.MainBanner
    
    var body: some View {
        if let image = banner.item.thumbnailImage {
            image
                .resizable()
                .frame(width: UIScreen.main.bounds.width - 40, height: UIScreen.main.bounds.width - 120)
                .cornerRadius(10)
        }
    }
}

struct BannerView_Previews: PreviewProvider {
    static var previews: some View {
        BannerSectionView()
    }
}

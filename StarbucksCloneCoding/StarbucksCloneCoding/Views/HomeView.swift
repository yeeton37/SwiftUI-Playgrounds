//
//  HomeView.swift
//  StarbucksCloneCoding
//
//  Created by 이예은 on 2023/04/08.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        ScrollView {
            VStack {
                HStack {
                    Image("starbucks logo")
                        .renderingMode(.original)
                        .resizable()
                        .frame(width: 30, height: 30)
                        .padding(.leading, 20.03)
                    Spacer()
                    Image("marker")
                        .resizable()
                        .frame(width: 15, height: 15)
                    Text("스타벅스 프로그라피점")
                    Spacer()
                }
                .padding(10)
            }
            
            BannerSectionView()
                .padding(.bottom, 20)
            
            HStack(spacing: 0) {
                     Text("예톤")
                       .foregroundColor(.brown)
                       .font(.title2)
                       .fontWeight(.bold)
                       .multilineTextAlignment(.leading)
                     Text("님을 위한 추천 메뉴")
                       .font(.title2)
                       .fontWeight(.bold)
                       .multilineTextAlignment(.leading)
                     Spacer()
                   }.padding(.leading, 20)
            
            MenuSuggestionSectionView()
                .padding(.bottom, 15)
            
            HStack {
                     Text("What's new")
                       .font(.title2)
                       .fontWeight(.medium)
                     Spacer()
                   }.padding(.leading, 20)
                .padding(.bottom, 20)
            EventSectionView()
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

//
//  WhatsNew.swift
//  StarbucksCloneCoding
//
//  Created by 이예은 on 2023/04/08.
//

import UIKit

struct Event {
  
  enum WhatsNew: CaseIterable, Identifiable {
    var id: UUID { return UUID() }
    case loveUs, hyundaiCard, cartisKulig, baristaFavorites
  }
  
  let id = UUID()
  let title: String
  let eventPeriod: String
  let thumbnailImage: UIImage?
  let url: String
}

extension Event.WhatsNew {
  
  var items: Event {
    switch self {
    case .loveUs:
      return .init(
        title: "4/1일, 또 한번의 축제 랜더스데이",
        eventPeriod: "2023-04-01 ~ 2023-04-07",
        thumbnailImage: UIImage(named: "LoveUs"),
        url: "https://www.starbucks.co.kr/whats_new/campaign_view.do?pro_seq=2147&menu_cd=")
    case .hyundaiCard:
      return .init(
        title: "스타벅스 현대카드 3월 혜택",
        eventPeriod: "2023-03-01 ~ 2023-04-09",
        thumbnailImage: UIImage(named: "HyundaiCard"),
        url: "https://www.starbucks.co.kr/whats_new/campaign_view.do?pro_seq=2143&menu_cd=")
    case .cartisKulig:
      return .init(
        title: "3월 7일, 커티스 쿨릭 상품 출시",
        eventPeriod: "2023-03-07~소진 시 까지",
        thumbnailImage: UIImage(named: "CartisKulig"),
        url: "https://www.starbucks.co.kr/whats_new/campaign_view.do?pro_seq=2144&menu_cd=")
    case .baristaFavorites:
      return .init(
        title: "BARISTA FAVORITES",
        eventPeriod: "2023-03-21 ~ 2023-05-02",
        thumbnailImage: UIImage(named: "BaristaFavorites"),
        url: "https://www.starbucks.co.kr/whats_new/campaign_view.do?pro_seq=2152&menu_cd=")
    }
  }
}

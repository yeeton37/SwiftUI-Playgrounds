//
//  Banner.swift
//  StarbucksCloneCoding
//
//  Created by 이예은 on 2023/04/08.
//

import SwiftUI

struct Banner {
  
  enum MainBanner: CaseIterable, Identifiable {
    var id: UUID { return UUID() }
    case findYourTaste, stayChillStayPlayful, summerBeverage
  }
  
  let id = UUID()
  let thumbnailImage: Image?
}

extension Banner.MainBanner {
  
  var item: Banner {
    switch self {
    case .findYourTaste:
      return .init(thumbnailImage: Image("FindYourTaste"))
    case .stayChillStayPlayful:
      return .init(thumbnailImage: Image("StayChillStayPlayful"))
    case .summerBeverage:
      return .init(thumbnailImage: Image("SummerBaeverage"))
    }
  }
}

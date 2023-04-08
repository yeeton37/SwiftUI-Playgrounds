//
//  Banner.swift
//  StarbucksCloneCoding
//
//  Created by 이예은 on 2023/04/08.
//

import UIKit

struct Banner {
  
  enum MainBanner: CaseIterable, Identifiable {
    var id: UUID { return UUID() }
    case findYourTaste, stayChillStayPlayful, summerBeverage
  }
  
  let id = UUID()
  let thumbnailImage: UIImage?
}

extension Banner.MainBanner {
  
  var item: Banner {
    switch self {
    case .findYourTaste:
      return .init(thumbnailImage: UIImage(named: "FindYourTaste"))
    case .stayChillStayPlayful:
      return .init(thumbnailImage: UIImage(named: "StayChillStayPlayful"))
    case .summerBeverage:
      return .init(thumbnailImage: UIImage(named: "SummerBaeverage"))
    }
  }
}

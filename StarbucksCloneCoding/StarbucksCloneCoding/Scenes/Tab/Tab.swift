//
//  Tab.swift
//  StarbucksCloneCoding
//
//  Created by 이예은 on 2023/04/08.
//

import SwiftUI

enum Tab {
    case home
    case order
    case menu
    case basket
    
    var textItem: Text {
        switch self {
        case .home:
            return Text("홈")
        case .order:
            return Text("주문")
        case .menu:
            return Text("나의 메뉴")
        case .basket:
            return Text("장바구니")
        }
    }
    
    var imageItem: Image {
        switch self {
        case .home:
            return Image(uiImage: UIImage(named: "house")!).frame(width: 20, height: 20) as! Image
        case .order:
            return Image(uiImage: UIImage(named: "tumbler")!).frame(width: 20, height: 20) as! Image
        case .menu:
            return Image(uiImage: UIImage(named: "heart")!).frame(width: 20, height: 20) as! Image
        case .basket:
            return Image(uiImage: UIImage(named: "basket")!).frame(width: 20, height: 20) as! Image
        }
    }
}

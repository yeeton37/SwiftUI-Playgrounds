//
//  CoffeeMenu.swift
//  StarbucksCloneCoding
//
//  Created by 이예은 on 2023/04/08.
//

import SwiftUI

struct CoffeeMenu: Identifiable {
    let image: Image
    let name: String
    
    let id = UUID()
    
    static let sample: [CoffeeMenu] = [
        CoffeeMenu(image: Image("Jeju Forest Cold Brew"), name: "제주 비자림 콜드브루"),
        CoffeeMenu(image: Image("Iced Choux Cream Latte"), name: "아이스 슈크림 라떼"),
        CoffeeMenu(image: Image("Vanilla Flat White"), name: "바닐라 플랫 화이트")
    ]
    
}

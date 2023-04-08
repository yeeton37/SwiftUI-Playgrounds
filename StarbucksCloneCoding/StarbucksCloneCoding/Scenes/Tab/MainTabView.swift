//
//  MainTabView.swift
//  StarbucksCloneCoding
//
//  Created by 이예은 on 2023/04/08.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            Text("홈")
                .tabItem {
                    Tab.home.imageItem
                    Tab.home.textItem
                }
            Text("주문")
                .tabItem {
                    Tab.order.imageItem
                    Tab.order.textItem
                }
            Text("나의메뉴")
                .tabItem {
                    Tab.order.imageItem
                    Tab.order.textItem
                }
            Text("장바구니")
                .tabItem {
                    Tab.basket.imageItem
                    Tab.basket.textItem
                }
        }
    }
}

//struct MainTabView_Previews: PreviewProvider {
//    static var previews: some View {
//        MainTabView()
//    }
//}

struct SampleLazyHStack: View {
    
    struct Number: Identifiable {
        let value: Int
        var id: Int { value }
    }
    
    let numbers: [Number] = (0...100).map { Number(value: $0) }
    
    var body: some View {
        List {
            Section(header: Text("Header")) {
                ForEach(numbers) { number in
                    Text("\(number.value)")
                }
            }
            
            Section(header: Text("Second Header"), footer: Text("Footer")) {
                ForEach(numbers) { number in
                    Text("\(number.value)")
                }
            }
        }
    }
}

struct LazyHStack_Previews: PreviewProvider {
    static var previews: some View {
        SampleLazyHStack()
    }
}

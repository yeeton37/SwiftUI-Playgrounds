//
//  EventView.swift
//  StarbucksCloneCoding
//
//  Created by 이예은 on 2023/04/08.
//

import SwiftUI

struct EventSectionView: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            LazyHStack(spacing: 16) {
                ForEach(Event.items) { event in
                    EventItemView(event: event)
                }
            }
            .padding(.horizontal, 16)
        }
    }
}

struct EventItemView: View {
    let event: Event
    
    var body: some View {
        VStack {
            if let image = event.thumbnailImage {
                image
                    .resizable()
                    .cornerRadius(10)
                    .frame(height: 160)
            }
            
            Text(event.eventPeriod)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.caption)
                .foregroundColor(.gray)
        
            Text(event.title)
                .frame(maxWidth: .infinity, alignment: .leading)
                .font(.callout)
                .lineLimit(2)
        }
        .frame(width: 160)
    }
    
}

struct EventSectionView_Previews: PreviewProvider {
    static var previews: some View {
        EventSectionView()
    }
}

//
//  BrandGridView.swift
//  Touchdown
//
//  Created by Mert Palas on 19.01.2025.
//

import SwiftUI

struct BrandGridView: View {
    //MARK: - PROPERTY
    
    
    //MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout,
                      spacing: columnSpacing,
                      content: {
                ForEach(brands) { brand in
                    BrandItemView(brand: brand)
                }
            })//: GRID
            .frame(height: 225)
            .padding(15)
        })//: SCROLL
    }
}

struct BrandGridView_Preview: PreviewProvider {
    static var previews: some View {
        BrandGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}

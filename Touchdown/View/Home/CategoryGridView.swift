//
//  CategoryGridView.swift
//  Touchdown
//
//  Created by Mert Palas on 18.01.2025.
//

import SwiftUI

struct CategoryGridView: View {
    //MARK: - PROPERTY
    
    
    //MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false, content: {
            LazyHGrid(rows: gridLayout,
                      alignment: .center,
                      spacing: columnSpacing,
                      pinnedViews: [],
                      content: {
                Section(
                    header: SectionView(rotateClockWise:  false),
                    footer: SectionView(rotateClockWise: true)
                ) {
                    ForEach(categories) { category in
                        CategoryItemView(category: category)
                    }
                }
            })//: GRID
            .frame(height: 200)
            .padding(.horizontal, 15)
            .padding(.vertical, 10)
            
        })//: SCROLL
    }
    
}

struct CategoryGridView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryGridView()
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}

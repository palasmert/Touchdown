//
//  BrandItemView.swift
//  Touchdown
//
//  Created by Mert Palas on 19.01.2025.
//

import SwiftUI

struct BrandItemView: View {
    //MARK: - PROPERTY
    
    let brand: Brand
    
    //MARK: - BODY
    var body: some View {
        Image(brand.image)
            .resizable()
            .scaledToFit()
            .padding()
            .background(Color.white.cornerRadius(12))
            .background(
                RoundedRectangle(cornerRadius: 12).stroke(Color.gray, lineWidth: 3)
            )
    }
}

struct BrandItemView_Previews: PreviewProvider {
    static var previews: some View {
        BrandItemView(brand: brands[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}

//
//  TopPartDetailView.swift
//  Touchdown
//
//  Created by Mert Palas on 20.01.2025.
//

import SwiftUI

struct TopPartDetailView: View {
    //MARK: - PROPERTY
    
    @State private var isAnimating: Bool = false
    @EnvironmentObject var shop: Shop
    
    //MARK: - BODY
    var body: some View {
        HStack(alignment: .center, spacing: 6, content: {
            // PRICE
            VStack(alignment: .leading, spacing: 6, content: {
                Text("Price")
                    .fontWeight(.semibold)
                
                Text(shop.selectedProduct?.formattedPrice ?? sampleProduct.formattedPrice)
                    .font(.largeTitle)
                    .fontWeight(.black)
                    .scaleEffect(1.40, anchor: .leading)
            })//: VSTACK
            .offset(y: isAnimating ? -50 : 75)
            
            Spacer()
            
            // PHOTO
            Image(shop.selectedProduct?.image ?? sampleProduct.image)
                .resizable()
                .scaledToFit()
                .offset(y: isAnimating ? 0 : -325)
            
        })//: HSTACK
        .onAppear(perform: {
            withAnimation(.easeOut(duration: 0.75)) {
                isAnimating.toggle()
            }
        })
    }
}

struct TopPartDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TopPartDetailView()
            .environmentObject(Shop())
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

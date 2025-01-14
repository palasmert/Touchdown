//
//  FeaturedItemView.swift
//  Touchdown
//
//  Created by Mert Palas on 15.01.2025.
//

import SwiftUI

struct FeaturedItemView: View {
    //MARK: - PROPERTY
    
    let player: Player
    
    //MARK: - BODY

    var body: some View {
        Image(player.image)
            .resizable()
            .scaledToFit()
            .cornerRadius(20)
    }
}
//MARK: - PREVIEW

struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView(player: players[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(colorBackground)
    }
}

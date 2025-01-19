//
//  Constant.swift
//  Touchdown
//
//  Created by Mert Palas on 14.01.2025.
//

import Foundation
import SwiftUI

//DATA
let players: [Player] = Bundle.main.decode("player.json")
let categories: [Category] = Bundle.main.decode("category.json")
let products: [Product] = Bundle.main.decode("product.json")
let brands: [Brand] = Bundle.main.decode("brand.json")

//COLOR
let colorBackground: Color = Color("ColorBackground")
let colorGray: Color = Color(UIColor.systemGray4)

//LAYOUT
let columnSpacing: CGFloat = 15
let rowSpacing: CGFloat = 15
var gridLayout: [GridItem] {
    return Array(repeating: GridItem(.flexible(), spacing: rowSpacing), count: 2)
}

//UX
//API
//IMAGE
//FONT
//STRING
//MISC

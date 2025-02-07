//
//  Shop.swift
//  Touchdown
//
//  Created by Mert Palas on 7.02.2025.
//

import Foundation

class Shop: ObservableObject {
    @Published var showingProduct: Bool = false
    @Published var selectedProduct: Product? = nil
}

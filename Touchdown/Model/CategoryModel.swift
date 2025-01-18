//
//  CategoryModel.swift
//  Touchdown
//
//  Created by Mert Palas on 18.01.2025.
//

import Foundation

struct Category: Codable, Identifiable {
    let id: Int
    let name: String
    let image: String
}

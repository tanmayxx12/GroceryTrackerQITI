//
//  ExpiringSoonProducts.swift
//  GroceryTracker
//
//  Created by Tanmay . on 13/03/25.
//

import Foundation

struct ExpiringSoonProducts: Identifiable {
    var id = UUID()
    let name: String
    let imageName: String
    let expiryDate: String
}

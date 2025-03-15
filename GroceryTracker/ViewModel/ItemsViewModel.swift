//
//  ItemsViewModel.swift
//  GroceryTracker
//
//  Created by Tanmay . on 13/03/25.
//

import Foundation

class ItemsViewModel: ObservableObject {
    let expiredProducts: [ExpiredProducts] = [
        ExpiredProducts(name: "Onion bag", imageName: "onions"),
        ExpiredProducts(name: "Tomatoes", imageName: "tomatoes"),
        ExpiredProducts(name: "Carrots", imageName: "carrots"),
        ExpiredProducts(name: "Potatoes", imageName: "potatoes"),
        ExpiredProducts(name: "Apple", imageName: "apples"),
        ExpiredProducts(name: "Bananas", imageName: "bananas"),
        ExpiredProducts(name: "Oranges", imageName: "oranges"),
        ExpiredProducts(name: "Strawberries", imageName: "strawberries")
    ]
    
    let expiringSoonProducts: [ExpiringSoonProducts] = [
        ExpiringSoonProducts(name: "Onions bag", imageName: "onions", expiryDate: "02/05/2024"),
        ExpiringSoonProducts(name: "Strawberries", imageName: "strawberries", expiryDate: "02/05/2024"),
        ExpiringSoonProducts(name: "Oranges", imageName: "oranges", expiryDate: "02/05/2024"),
        ExpiringSoonProducts(name: "Bananas", imageName: "bananas", expiryDate: "02/05/2024"),
        ExpiringSoonProducts(name: "Tomatoes", imageName: "tomatoes", expiryDate: "02/05/2024")
    ]
    
}


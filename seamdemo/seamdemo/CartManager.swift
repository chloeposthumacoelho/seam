//
//  CartManager.swift
//  seamdemo
//
//  Created by Chloe Posthuma Coelho on 10/16/22.
//

import Foundation
class CartManager: ObservableObject {
    @Published private(set) var products: [Product] = []
    @Published private(set) var total: Int = 0
    // Functions to add and remove from cart
    func addToCart(product: Product) {
        products.append(product)
        total += product.price
    }
    
    func removeFromCart(product: Product) {
        products = products.filter { $0.id != product.id }
        total -= product.price
    }
}

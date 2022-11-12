//
//  Product.swift
//  seamdemo
//
//  Created by Chloe Posthuma Coelho on 10/16/22.
//

import Foundation


struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}
var productList = [Product(name: "Lenovo laptop charger", image: "techessentials", price: 17),
                   Product(name: "Dorm lamp- used but in good condition", image: "dormessentials", price: 89),
                   Product(name: "Macbook laptop cover", image: "techessentials", price: 27),
                   Product(name: "calculus I essentials textbook- used with pencil and highlighter marks but in good condition", image: "textbooks", price: 11)]


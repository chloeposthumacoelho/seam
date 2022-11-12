//
//  ContentView.swift
//  seamdemo
//
//  Created by Chloe Posthuma Coelho on 10/16/22.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(productList, id: \.id) { product in
                        ProductCard(product: product)
                    }
                }
                .padding()
                
            }
         
            .navigationTitle(Text("Seam- a sustainable marketplace made for students, by students"))
           
            .toolbar {
                NavigationLink {
                    //_CartView()
                }label:{
                   CartButton(numberOfProducts: cartManager.products.count)
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
                             }
                             }
                             


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

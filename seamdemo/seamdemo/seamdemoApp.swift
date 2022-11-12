//
//  seamdemoApp.swift
//  seamdemo
//
//  Created by Chloe Posthuma Coelho on 10/16/22.
//

import SwiftUI

struct contentView: View {
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        HStack{
            NavigationView {
                ScrollView {
                    ForEach(productList, id: \.id) { product in
                        ProductCard(product: product)
                        
                        
                    }
                    
                }
                
                .padding()
            }
            .navigationTitle(Text("Sweater Shop"))
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
}
struct contentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

//
//  mainTabView.swift
//  Arf
//
//  Created by Suraj Kotte on 19/04/21.
//

import SwiftUI
struct mainTabView: View {
    var body: some View {
        TabView{
            
            ContentView()
                .tabItem {
                    Image(systemName:"house.fill")
                    
                    Text("Home")
                }
            wishList()
                .tabItem {
                    Image(systemName: "heart.circle")
                        .foregroundColor(.blue)
                    Text("wish list")
                }
            cartView()
                .tabItem {
                    Image(systemName: "cart.badge.plus")
                    Text("Cart")
                }
            Settings()
                .tabItem {
                    Image(systemName: "person")
                    Text("Account")
                }
            
        }
    }
}

struct mainTabView_Previews: PreviewProvider {
    static var previews: some View {
        mainTabView()
        
    }
}

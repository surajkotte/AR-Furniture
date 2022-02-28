//
//  ContentView.swift
//  Arf
//
//  Created by Suraj Kotte on 10/04/21.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var shop : Shop
    var body: some View {
        VStack {
            if shop.isshow == false {
                ZStack {
                LinearGradient(gradient: Gradient(colors: [Color("BackGroundColor3"), Color("BackGroundColor4")]), startPoint: .leading, endPoint: .trailing)
                VStack {
                    AppNameView()
                        .padding(.horizontal,10)
                        .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
                        .padding(.horizontal)
                        .shadow(color: .white, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: 2.3, y:1.2)
                    Spacer()
                    ScrollView(.vertical, showsIndicators: true){
                        HimgView()
                          
                        Spacer()
                        productsView()
                    }
                }
                .padding()
                .background(Color( red: 0.5, green: 1, blue:0.9, opacity: 0.2))
                
            }
            .background(Color("BackGroundColor"))
                .ignoresSafeArea(.all,edges: .all)
            } else {
                withAnimation(.easeOut){
                DetailsView(name: "D1Img")
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
            .environmentObject(Shop())
    }
}

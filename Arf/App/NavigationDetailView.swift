//
//  NavigationDetailView.swift
//  Arf
//
//  Created by Suraj Kotte on 23/04/21.
//

import SwiftUI

struct NavigationDetailView: View {
    @EnvironmentObject var shop : Shop
    var body: some View {
        HStack {
            Button(action: {
                withAnimation(.easeIn){
                    shop.isshow = false
                    //shop.proname = nil
                }
            }, label: {
                Image(systemName: "chevron.left")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.black)
            })
              
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "cart")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.black)
            })
        }
    }
}

struct NavigationDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationDetailView()
            .previewLayout(.sizeThatFits)
            .padding()
            .environmentObject(Shop())
            
    }
}

//
//  productInfo.swift
//  Arf
//
//  Created by Suraj Kotte on 23/04/21.
//

import SwiftUI

struct productInfo: View {
    let catg : Catogery
    var body: some View {
        VStack(alignment :.leading) {
            ZStack {
                Image(catg.image)
                    .resizable()
                    .scaledToFit()
                    .padding(6)
                    .cornerRadius(8)
            }
            .background(LinearGradient(gradient: Gradient(colors: [Color.blue, Color.green]), startPoint: .leading, endPoint: .trailing))
            .cornerRadius(12)
            Text(catg.name)
                .font(.title3)
                .fontWeight(.black)
                .padding(.top,10)
            
            Text("price : \(catg.price)")
                .fontWeight(.semibold)
                .foregroundColor(.black)
                .padding(.top,12)
                .padding(.bottom)
                
        }
    }
}

struct productInfo_Previews: PreviewProvider {
    static var previews: some View {
        productInfo(catg: catogaries[0])
            .previewLayout(.fixed(width: 150, height: 300))
            .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius: /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/, x: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/, y: /*@START_MENU_TOKEN@*/0.0/*@END_MENU_TOKEN@*/)
    }
}

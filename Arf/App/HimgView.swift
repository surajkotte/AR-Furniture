//
//  HimgView.swift
//  Arf
//
//  Created by Suraj Kotte on 19/04/21.
//

import SwiftUI

struct HimgView: View {
    var body: some View {
        TabView {
            ForEach(/*@START_MENU_TOKEN@*/0 ..< 5/*@END_MENU_TOKEN@*/) { item in
                Image("d1img4")
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(12)
                    .frame(width: 350, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
            .padding(.horizontal,4)
        }
        .tabViewStyle(PageTabViewStyle())
    }
}

struct HimgView_Previews: PreviewProvider {
    static var previews: some View {
        HimgView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

//
//  hImage.swift
//  Arf
//
//  Created by Suraj Kotte on 19/04/21.
//

import SwiftUI

struct hImage: View {
    let imgname : String
    var body: some View {
            TabView {
                ForEach(0 ..< 6) { item in
                    Image("\(imgname)\(item+1)")
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(12)
                        .frame(width: 300, height: 300, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                        .padding()
                }
            }
            .tabViewStyle(PageTabViewStyle())
    }
}

struct hImage_Previews: PreviewProvider {
    static var previews: some View {
        hImage(imgname: "d1img")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

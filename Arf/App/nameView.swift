//
//  nameView.swift
//  Arf
//
//  Created by Suraj Kotte on 19/04/21.
//

import SwiftUI

struct nameView: View {
    var body: some View {
        HStack {
//            Image("furnitures")
//                .resizable()
//                .scaledToFit()
//                .frame(width: 50, height: 50, alignment:.center)
            Text("Furnitu-AR")
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundColor(.black)
                
        }
        
    }
}

struct nameView_Previews: PreviewProvider {
    static var previews: some View {
        nameView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

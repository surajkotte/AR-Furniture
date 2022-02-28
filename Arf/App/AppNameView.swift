//
//  AppNameView.swift
//  Arf
//
//  Created by Suraj Kotte on 19/04/21.
//

import SwiftUI

struct AppNameView: View {
    @State var isAnimating : Bool = false;
    var body: some View {
        HStack{
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "magnifyingglass")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.black)
            })
            Spacer()
            nameView()
                .opacity(isAnimating ? 1 : 0)
                .offset(x:0, y: (isAnimating ? 0 : -25) )
                .onAppear(perform: {
                    withAnimation(.easeOut(duration: 1.0)){
                        isAnimating = true
                    }
                })
            Spacer()
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
                Image(systemName: "cart")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(Color.black)
            })
        }
    }
}

struct AppNameView_Previews: PreviewProvider {
    static var previews: some View {
        AppNameView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}

//
//  MainView.swift
//  Arf
//
//  Created by Suraj Kotte on 19/04/21.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var shop : Shop
    var arname : String
    @State var showingPreview = false
//    let fileUrl = Bundle.main.url(
//        forResource: "d1imgu", withExtension: "usdz"
//       )!
    var body: some View {
        let fileUrl = Bundle.main.url(
            forResource: shop.arVisiblename, withExtension: "usdz"
           )!
        Button(action :  {
            
            
                   self.showingPreview = true
        }){
        Image(systemName: "arkit")
            Text("View in AR")
               .sheet(isPresented: $showingPreview) {
                VStack{
                    HStack{
                        Button(action: {
                            shop.isArVisible = false
                            shop.arVisiblename = nil
                            self.showingPreview.toggle()
                        }){
                            Image(systemName: "xmark")
                            
                        }
                        Spacer()
                    }
                    .padding()
                    //PreviewController(url: fileUrl)
                    ArContainer()
                }
                  
               }
        }

    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView(arname: "d1")
    }
}

//
//  DetailsView.swift
//  Arf
//
//  Created by Suraj Kotte on 20/04/21.
//

import SwiftUI

struct DetailsView: View {
    @EnvironmentObject var shop : Shop
    var name : String
    var body: some View {
       
    
        ZStack {
           
            VStack {
               
                if shop.proname == "sofa" && shop.isArVisible == false{
                    
                    ZStack {
                        LinearGradient(gradient: Gradient(colors:[Color("BackGroundColor3"), Color("BackGroundColor4")]), startPoint: .leading, endPoint: .trailing)
                      
                        VStack {
                        NavigationDetailView()
                            .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
                       Spacer()
                        ScrollView(.vertical,showsIndicators : true) {
                            LazyVGrid(columns: GridLayout, alignment: .center, spacing: colSpacing, pinnedViews: [], content: {
                                ForEach(catogaries) { item in
                                    productInfo(catg: item)
                                        .padding(10)
                                        .background(Color.white)
                                        .cornerRadius(12)
                                        .onTapGesture {
                                            shop.isArVisible = true
                                            shop.arVisiblename = "\(item.image)u"
                                            let models = findModel(name: shop.arVisiblename!)
                                            models.asyncLoadModelEntity(name: models.name)
                                            shop.selectedModel = models
                                        }
                                        
                                }
                                .shadow(color: .black, radius: 4, x: 4, y: 3)
                            })
                        }
                        }
                    }
                    //.ignoresSafeArea(.all)
                    .edgesIgnoringSafeArea(.all)
                }
                else if(shop.isArVisible == true && shop.arVisiblename != nil){
                        MainView(arname: shop.arVisiblename!)
                    }
                 else {
                    NavigationDetailView()
                        .padding(.top,UIApplication.shared.windows.first?.safeAreaInsets.top)
                    
                   Spacer()
                }
            }
        }
        
    }
    }

struct DetailsView_Previews: PreviewProvider {
    static var previews: some View {
        DetailsView(name: "sofa")
            .environmentObject(Shop())
            
    }
}

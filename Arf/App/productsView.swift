//
//  productsView.swift
//  Arf
//
//  Created by Suraj Kotte on 19/04/21.
//

import SwiftUI

struct productsView: View {
    @EnvironmentObject var shop : Shop
    var body: some View {
        let imgnames : [String] = ["bed", "sofa", "chair", "Dining","desktop","furnitures"]
        ScrollView(.horizontal,showsIndicators : false) {
            HStack {
           
                ForEach(imgnames, id: \.self){ item in
                    if shop.isshow == false {
                        Button(action: {
                                withAnimation(.easeOut){
                                shop.isshow = true
                                    shop.proname = item
                                   
                                }
                            }, label: {
                                VStack {
                                    Image(item)
                                        .resizable()
                                        .scaledToFit()
                                        .font(.largeTitle)
                                        .foregroundColor(.black)
                                        .padding(.top)
                                    
                                    
            //                        Text("BEDS")
            //                            .foregroundColor(.black)
                                        .padding(.bottom,10)
                                    
                                }
                            })
                                .frame(width: 70, height: 70, alignment: .center).clipShape(Circle())
                            .background(Color("mcolor"))
                                .cornerRadius(50)
                                .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius:8, x: 2, y: 0)
                        .padding()
                    } else {
                        DetailsView(name: shop.proname ?? "")
                    }
                }
                }
//                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
//                        VStack {
//                            Image("sofa")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 50, height: 50, alignment: .center)
//                                .foregroundColor(.black)
//                                .padding(.bottom,5)
//                                .padding(.top,2)
//    //                        Text("SOFA")
//    //                            .foregroundColor(.black)
//
//                        }
//
//                    })
//                    .frame(width: 70, height: 70, alignment: .center).clipShape(Circle())
//                    .background(Color("mcolor"))
//                    .cornerRadius(50)
//                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius:8, x: 2, y: 0)
//                    .padding()
//
//                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
//                        VStack {
//                            Image("chair")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 50, height: 50, alignment: .center)
//                                .foregroundColor(.black)
//                                .padding(.bottom,5)
//                                .padding(.top,2)
//    //                        Text("CHAIRS")
//    //                            .foregroundColor(.black)
//
//                        }
//
//                    })
//                    .frame(width: 70, height: 70, alignment: .center).clipShape(Circle())
//                    .background(Color("mcolor"))
//                    .cornerRadius(50)
//                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius:8, x: 2, y: 0)
//                    .padding()
//                Button(action: {
//                    print("here")
//                }){
//                        VStack {
//                            Image("tabled")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 50, height: 50, alignment: .center)
//                                .foregroundColor(.black)
//                                .padding(.bottom,5)
//                                .padding(.top,2)
//    //                        Text("Tables")
//    //                            .foregroundColor(.black)
//
//                        }
//
//                }
//                    .frame(width: 70, height: 70, alignment: .center).clipShape(Circle())
//                    .background(Color("mcolor"))
//                    .cornerRadius(50)
//                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius:8, x: 2, y: 0)
//                    .padding()
//
//
//                Button(action: {
//
//                }, label: {
//                        VStack {
//                            Image("Otable")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 50, height: 50, alignment: .center)
//                                .foregroundColor(.black)
//                                .padding(.bottom,5)
//                                .padding(.top,2)
//    //                        Text("Dining Tables")
//    //                            .foregroundColor(.black)
//    //
//                        }
//
//                    })
//                    .frame(width: 70, height: 70, alignment: .center).clipShape(Circle())
//                    .background(Color("mcolor"))
//                    .cornerRadius(50)
//                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius:8, x: 2, y: 0)
//                    .padding()
//
//                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/, label: {
//                        VStack {
//                            Image("desktop")
//                                .resizable()
//                                .scaledToFit()
//                                .frame(width: 50, height: 50, alignment: .center)
//                                .foregroundColor(.black)
//                                .padding(.bottom,5)
//                                .padding(.top,2)
//    //                        Text("Office Tables")
//    //                            .foregroundColor(.black)
//
//                        }
//
//                    })
//                    .frame(width: 70, height: 70, alignment: .center).clipShape(Circle())
//                    .background(Color("mcolor"))
//                    .cornerRadius(50)
//                    .shadow(color: /*@START_MENU_TOKEN@*/.black/*@END_MENU_TOKEN@*/, radius:8, x: 2, y: 0)
//                    .padding()
//
//
//
//            }
            .padding(.horizontal)
        }
    }
}

struct productsView_Previews: PreviewProvider {
    static var previews: some View {
        productsView()
            .previewLayout(.sizeThatFits)
            .padding()
            .environmentObject(Shop())
    }
}

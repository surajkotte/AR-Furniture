//
//  PlacementView.swift
//  Arf
//
//  Created by Suraj Kotte on 25/04/21.
//

import SwiftUI

struct placementView : View{
    @EnvironmentObject var shop : Shop
    var body: some View{
        
        HStack{
            Spacer()
        placementButton(SystemIconName: "xmark.circle.fill") {
            print("placement cancel button pressed")
            self.shop.selectedModel = nil
            
        }
        Spacer()
        placementButton(SystemIconName: "checkmark.circle.fill") {
            print("confirm placement button pressed")
            self.shop.confirmedmodel = self.shop.selectedModel
            self.shop.selectedModel = nil
        }
        Spacer()
    }
        .padding(.bottom,30)
    }
}

struct placementButton : View {
    let SystemIconName : String
    let action:  () -> Void
    var body: some View{
        Button(action: {
            self.action()
        }){
            Image(systemName: SystemIconName)
                .font(.system(size: 50, weight: .light, design: .default))
                .foregroundColor(.white)
                .buttonStyle(PlainButtonStyle())
            
        }
        .frame(width: 75, height: 75)

    }
}

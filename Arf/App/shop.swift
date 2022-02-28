//
//  shop.swift
//  Arf
//
//  Created by Suraj Kotte on 22/04/21.
//

import Foundation
import Combine

class Shop : ObservableObject {
    @Published var isshow : Bool = false
    @Published var proname : String? = nil
    @Published var isArVisible : Bool = false
    @Published var arVisiblename : String? = nil
    @Published var selectedModel : Model? {
        willSet(newValue){
            print("Setting model to \(String(describing: newValue?.name))")
        }
    }
    
    @Published var confirmedmodel : Model?{
        willSet(newValue){
            guard let model = newValue else{
                print("Clearing confirmed model")
                return
            }
            print("settings confirmed to \(model.name)")
        }
    }
    var sceneObserver : Cancellable?
}

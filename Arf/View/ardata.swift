//
//  ardata.swift
//  Arf
//
//  Created by Suraj Kotte on 24/04/21.
//

import SwiftUI
import RealityKit
import Combine

class Model{
    var name : String
    var modelEntity : ModelEntity?
    var scaleCompensation : Float
    private var cancelable : AnyCancellable?
    init(name : String, scaleCompensation: Float){
        self.name = name
        self.scaleCompensation = scaleCompensation
    }
    
     func asyncLoadModelEntity(name : String){
        let filename = self.name + ".usdz"
        
        self.cancelable = ModelEntity.loadModelAsync(named: filename)
            .sink(receiveCompletion: {loadCompleion in
                switch loadCompleion {
                case .failure(let error): print("error to load modelentity error is \(error.localizedDescription)")
                case .finished:
                    break
                }
            }, receiveValue: { modelEntity in
                self.modelEntity = modelEntity
                self.modelEntity?.scale *= self.scaleCompensation
                print("model loaded")
            })
    }
}





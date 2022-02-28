//
//  customAr.swift
//  Arf
//
//  Created by Suraj Kotte on 24/04/21.
//

import RealityKit
import ARKit
import FocusEntity
 
class CustomARView : ARView {
    var focusentity : FocusEntity?
    required init(frame frameRect: CGRect){
        super.init(frame: frameRect)
        focusentity = FocusEntity(on: self, focus: .classic)
        configure()
    }
    
    @objc required dynamic init?(coder decoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func configure(){
        let config = ARWorldTrackingConfiguration()
        config.planeDetection = [.horizontal, .vertical]
        session.run(config)
    }
}

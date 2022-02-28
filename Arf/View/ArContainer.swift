//
//  ArContainer.swift
//  Arf
//
//  Created by Suraj Kotte on 24/04/21.
//

import SwiftUI
import RealityKit
struct ArContainer: View {
    @EnvironmentObject var shop : Shop
    var body: some View {
        ZStack(alignment: .bottom){
        ArViewContainer()
            if(shop.isArVisible){
                placementView()
            }
            else if(!shop.isArVisible){
                DetailsView(name: "sofa")
            }
        }
        .edgesIgnoringSafeArea(.all)
    }
}
struct ArViewContainer: UIViewRepresentable {
    @EnvironmentObject var shop : Shop
    func makeUIView(context: Context) -> CustomARView {
        let arView = CustomARView(frame: .zero)
        self.shop.sceneObserver = arView.scene.subscribe(to: SceneEvents.Update.self, { (event) in
            self.updateScene(for: arView)
        })
        return arView
    }
    func updateUIView(_ uiView: CustomARView , context: Context) {
        
    }
    private func updateScene(for arView : CustomARView){
        arView.focusentity?.isEnabled = self.shop.selectedModel != nil
        if let confirmedModel = self.shop.confirmedmodel, let modelEntity = confirmedModel.modelEntity{
            self.place(modelEntity, in: arView)
            self.shop.confirmedmodel = nil
        }
    }
    private func place(_ modelEntity :ModelEntity, in arView : ARView){
        let clonedEntity = modelEntity.clone(recursive: true)
        clonedEntity.generateCollisionShapes(recursive: true)
        arView.installGestures([.translation, .rotation], for: clonedEntity)
        let anchorEntity = AnchorEntity(plane: .any)
        anchorEntity.addChild(clonedEntity)
        arView.scene.addAnchor(anchorEntity)
    }
 
}

struct ArContainer_Previews: PreviewProvider {
    static var previews: some View {
        ArContainer()
    }
}

//
//  findModel.swift
//  Arf
//
//  Created by Suraj Kotte on 26/04/21.
//

import Foundation

func findModel(name : String) -> Model{
    var model : Model?
    if(name == "d1imgu"){
        model = Model(name: name, scaleCompensation: 1)
    }
    else if(name == "d2imgu"){
        model = Model(name: name, scaleCompensation: 0.5)
    }
    else if(name == "d3imgu"){
        model = Model(name: name, scaleCompensation: 0.75)
    }
    else if(name == "d4imgu"){
        model = Model(name: name, scaleCompensation: 0.7)
    }
    else if(name == "d5imgu"){
        model = Model(name: name, scaleCompensation: 0.91)
    }
    else if(name == "d6imgu"){
        model = Model(name: name, scaleCompensation: 0.7)
    }
    else if(name == "d7imgu"){
        model = Model(name: name, scaleCompensation: 0.5)
    }
    else if(name == "d8imgu"){
        model = Model(name: name, scaleCompensation: 0.5)
    }
    return model!
}

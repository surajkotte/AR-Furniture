//
//  constants.swift
//  Arf
//
//  Created by Suraj Kotte on 23/04/21.
import SwiftUI
let Dining : [String] = ["d1img1"]
let rowSpacing : CGFloat = 10
let colSpacing : CGFloat = 10

let catogaries : [Catogery] = Bundle.main.decode("category.json")

var GridLayout : [GridItem] {
    return Array(repeating: GridItem(.flexible(),spacing: rowSpacing), count: 2)
}

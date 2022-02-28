//
//  ArfApp.swift
//  Arf
//
//  Created by Suraj Kotte on 10/04/21.
//

import SwiftUI

@main
struct ArfApp: App {
    var body: some Scene {
        WindowGroup {
            mainTabView()
                .environmentObject(Shop())
        }
    }
}

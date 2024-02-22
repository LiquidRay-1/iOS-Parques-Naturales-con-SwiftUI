//
//  ParquesApp.swift
//  Parques
//
//  Created by dam2 on 14/2/24.
//

import SwiftUI

@main
struct ParquesApp: App {
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            LandmarkList()
                .environment(modelData)
        }
    }
}

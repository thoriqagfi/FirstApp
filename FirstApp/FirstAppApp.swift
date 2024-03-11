//
//  FirstAppApp.swift
//  FirstApp
//
//  Created by Agfi on 10/03/24.
//

import SwiftUI

@main
struct FirstAppApp: App {
    @State private var modelData = ModelData()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(modelData)
        }
    }
}

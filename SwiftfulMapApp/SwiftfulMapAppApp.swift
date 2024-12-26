//
//  SwiftfulMapAppApp.swift
//  SwiftfulMapApp
//
//  Created by Amir Lajevardi on 05/11/2024.
//

import SwiftUI

@main
struct SwiftfulMapAppApp: App {
    
    @StateObject private var vm = LocationsViewModel()
    
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm)
        }
    }
}

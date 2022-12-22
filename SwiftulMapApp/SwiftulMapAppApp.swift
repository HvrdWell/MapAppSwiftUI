//
//  SwiftulMapAppApp.swift
//  SwiftulMapApp
//
//  Created by geka231 on 21.12.2022.
//

import SwiftUI

@main
struct SwiftulMapAppApp: App {
    
    @StateObject private var vm = LocationViewModel()

    
    var body: some Scene {
        WindowGroup {
            LocationsView()
                .environmentObject(vm)
        }
    }
}

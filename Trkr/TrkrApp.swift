//
//  TrkrApp.swift
//  Trkr
//
//  Created by Stephane Lafontaine on 2021-06-21.
//

import SwiftUI

@main
struct TrkrApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ContentView(location: Locations().primary)
            }
        }
    }
}

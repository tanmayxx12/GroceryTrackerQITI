//
//  GroceryTrackerApp.swift
//  GroceryTracker
//
//  Created by Tanmay . on 13/03/25.
//

import SwiftUI

@main
struct GroceryTrackerApp: App {
    @StateObject private var viewModel = ItemsViewModel()
    var body: some Scene {
        WindowGroup {
            NavigationStack {
                HomeView()
                    .environmentObject(viewModel)
            }
        }
    }
}

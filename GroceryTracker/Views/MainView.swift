//
//  MainView.swift
//  GroceryTracker
//
//  Created by Tanmay . on 13/03/25.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var viewModel: ItemsViewModel
    @State var selectedIndex: Int = 0
    
    var body: some View {
        
        NavigationStack {
            VStack {
                ZStack {
                    if selectedIndex == 0 {
                        HomeView()
                    } else if selectedIndex == 1 {
                        Color.green.ignoresSafeArea()
                    } else if selectedIndex == 2 {
                        Color.blue.ignoresSafeArea()
                    } else if selectedIndex == 3 {
                        Color.yellow.ignoresSafeArea()
                    } else if selectedIndex == 4 {
                        Color.white.ignoresSafeArea()
                    } else {
                        Color.purple.ignoresSafeArea()
                    }
                }
                
                CustomTabBar(selectedIndex: $selectedIndex)
                    .frame(width: UIScreen.main.bounds.width - 17)
                
            }
        }
    }
}

#Preview {
    MainView()
        .environmentObject(ItemsViewModel())
}

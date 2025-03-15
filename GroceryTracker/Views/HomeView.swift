//
//  ContentView.swift
//  GroceryTracker
//
//  Created by Tanmay . on 13/03/25.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var viewModel: ItemsViewModel
    
    var body: some View {
        NavigationStack {
            ZStack {
                Color.gray.opacity(0.2)
                    .ignoresSafeArea()
                
                    ScrollView(.vertical, showsIndicators: false) {
                        LazyVStack {
                            
                            // MARK: - Header view:
                            HeaderView()
                                .padding(.bottom)
                            
                            // MARK: - Recommendation View:
                            ScrollView(.horizontal, showsIndicators: false) {
                                LazyHStack {
                                    // Using function to create a view:
                                    recommendationView(image: "recom1")
                                    recommendationView(image: "recom2")
                                }
                            }
                            .padding(.bottom)
                            
                            // MARK: - Grocery Budget View:
                            HStack {
                                Text("Grocery Budget")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                Spacer()
                            }
                            
                            NavigationLink {
                                Text("Navigated to Grocery Budget.")
                            } label: {
                                GroceryBudgetView()
                                    .padding(.bottom)
                            }
                            
                            // MARK: - Expired Products:
                            // Header for Expired Products
                            HStack {
                                Text("Expired Products")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                Spacer()
                            }
                            
                            ExpiredProductsView()
                                .padding(.bottom)
                            
                            // MARK: - Expiring Soon Products View:
                            // Header for Expiring Soon Products:
                            HStack {
                                Text("Expiring Soon")
                                    .font(.headline)
                                    .fontWeight(.bold)
                                Spacer()
                            }
                            
                            ExpiringSoonProductsView()
                            
                            // MARK: Family members view:
                            FamilyMembersView()
                                .padding(.bottom, 30)
                            
                        }
                        .frame(width: UIScreen.main.bounds.width - 17)
                    }
            }
        }
    }
}

#Preview {
    HomeView()
        .environmentObject(ItemsViewModel())
}

extension HomeView {
    
    private func recommendationView(image: String) -> some View {
        ZStack {
            Image(image)
                .resizable()
                .scaledToFill()
                .frame(width: 350, height: 150)
            
            HStack {
                VStack {
                    Text("Just For You!")
                        .font(.title2)
                        .fontWeight(.semibold)
                        .foregroundStyle(.white)
                    Text("Claim you offer.")
                        .font(.system(size: 15))
                        .foregroundStyle(.white.opacity(0.9))
                }
                .padding(.leading, 210)
            }
        }
        .cornerRadius(20)
    }
    
    
}

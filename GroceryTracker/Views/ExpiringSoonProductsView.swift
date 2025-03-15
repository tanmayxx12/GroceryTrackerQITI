//
//  ExpiringSoonProductsView.swift
//  GroceryTracker
//
//  Created by Tanmay . on 13/03/25.
//

import SwiftUI

struct ExpiringSoonProductsView: View {
    @EnvironmentObject var viewModel: ItemsViewModel
    
    var body: some View {
        VStack {
            HStack {
                Text("Total Products")
                    .foregroundStyle(.white)
                    .fontWeight(.semibold)
                    .padding(.trailing, 5)
                
                ZStack {
                    Circle()
                        .stroke(lineWidth: 1)
                        .frame(width: 20)
                        .foregroundStyle(.white)
                        .overlay {
                            Text("\(viewModel.expiringSoonProducts.count)")
                                .foregroundStyle(.white)
                                .font(.system(size: 13))
                                .fontWeight(.bold)
                        }
                }
                
                Spacer()
                
                NavigationLink {
                    ExpiringSoonProductsListView()
                } label: {
                    Text("View all")
                        .foregroundStyle(.white)
                        .font(.headline)
                        .fontWeight(.semibold)
                }
            }
            .padding(.top, 10)
            .padding(.horizontal, 10)

            ScrollView(.vertical, showsIndicators: false) {
                LazyVStack {
                    ForEach(viewModel.expiringSoonProducts, id: \.id) { product in
                        HStack(spacing: 10) {
                            Image(product.imageName)
                                .resizable()
                                .scaledToFill()
                                .frame(width: 110, height: 110)
                                .cornerRadius(20)
                            
                            VStack(alignment: .leading, spacing: 10) {
                                Text(product.name)
                                    .foregroundStyle(.white)
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                
                                Text("Expiry Data: \(product.expiryDate)")
                                    .foregroundStyle(.white)
                                
                                Button{
                                    // action for when the "View Details" button is tapped:
                                } label: {
                                    Capsule()
                                        .stroke(lineWidth: 1)
                                        .foregroundStyle(.white)
                                        .frame(width: 120, height: 30)
                                        .overlay {
                                            Text("View Details")
                                                .foregroundStyle(.white)
                                                .font(.headline)
                                        }
                                }
                                
                            }
                            
                            Spacer()
                            
                        }
                        .padding(.horizontal)
                    }
                }

            }
            
            
            
            
            
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .frame(height: 300)
        .background(.green)
        .cornerRadius(20)

    }
}

#Preview {
    ExpiringSoonProductsView()
        .environmentObject(ItemsViewModel())
}

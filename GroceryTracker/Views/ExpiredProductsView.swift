//
//  ExpiredProductsView.swift
//  GroceryTracker
//
//  Created by Tanmay . on 13/03/25.
//

import SwiftUI

struct ExpiredProductsView: View {
    @EnvironmentObject var viewModel: ItemsViewModel
    var body: some View {
        VStack {
            HStack {
                Text("Total Products")
                    .fontWeight(.semibold)
                    .padding(.trailing, 5)
                
                ZStack {
                    Circle()
                        .stroke(lineWidth: 1)
                        .frame(width: 20)
                        .overlay {
                            Text("\(viewModel.expiredProducts.count)")
                                .font(.system(size: 13))
                                .fontWeight(.bold)
                        }
                }
                
                Spacer()
                
                NavigationLink {
                    ExpiredProductsListView()
                } label: {
                    Text("View all")
                        .foregroundStyle(.green)
                        .font(.headline)
                        .fontWeight(.semibold)
                }
            }
            .padding(.top, 10)
            .padding(.horizontal, 10)
            
            ScrollView(.horizontal, showsIndicators: false) {
                LazyHStack {
                   
                    HStack(spacing: 30) {
                        ForEach(viewModel.expiredProducts, id: \.id) { product in
                            VStack {
                                Image(product.imageName)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 70)
                                    .clipShape(Circle())
                                
                                Text(product.name)
                                    .foregroundStyle(.gray)
                            }
                        }
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 5)
                    
                    
                    
                }
            }
            
            Spacer()
        }
        .frame(maxWidth: .infinity)
        .frame(height: 160)
        .background(.white)
        .cornerRadius(20)

    }
}

#Preview {
    ExpiredProductsView()
        .environmentObject(ItemsViewModel())
}

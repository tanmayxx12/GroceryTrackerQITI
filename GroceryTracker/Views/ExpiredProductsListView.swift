//
//  ExpiredProductsListView.swift
//  GroceryTracker
//
//  Created by Tanmay . on 13/03/25.
//

import SwiftUI

struct ExpiredProductsListView: View {
    @EnvironmentObject var viewModel: ItemsViewModel
    
    var body: some View {
        NavigationStack {
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
                                Text("\(viewModel.expiredProducts.count)")
                                    .foregroundStyle(.white)
                                    .font(.system(size: 13))
                                    .fontWeight(.bold)
                            }
                    }

                    Spacer()
                }
                .padding(.top, 10)
                .padding(.horizontal, 10)
                
                ScrollView(.vertical, showsIndicators: false) {
                    LazyVStack {
                        ForEach(viewModel.expiredProducts, id: \.id) { product in
                            HStack(spacing: 10) {
                                Image(product.imageName)
                                    .resizable()
                                    .scaledToFill()
                                    .frame(width: 120, height: 120)
                                    .cornerRadius(10)
                                    .padding(.leading)
                                    
                                VStack(alignment: .leading) {
                                    Text(product.name)
                                        .font(.title)
                                        .fontWeight(.semibold)
                                        .foregroundStyle(.white)
                                    
                                    
                                    Text("3 Units")
                                        .fontWeight(.semibold)
                                        .foregroundStyle(.white)
                                        .padding(.bottom, 20)
                                    
                                    HStack {
                                        ZStack {
                                            Capsule()
                                                .stroke(lineWidth: 1)
                                                .frame(width: 150, height: 20)
                                                .foregroundStyle(.white)
                                                .overlay {
                                                    Text("*Will be restocked soon")
                                                        .font(.caption)
                                                        .foregroundStyle(.white)
                                                }
                                        }
                                        
                                        ZStack {
                                            Capsule()
                                                .stroke(lineWidth: 1)
                                                .frame(width: 100, height: 20)
                                                .foregroundStyle(.white)
                                                .overlay {
                                                    Button {
                                                        // Action for when the 'Remind Me' button is tapped
                                                    } label: {
                                                        HStack {
                                                            Image(systemName: "bell")
                                                                .font(.caption)
                                                                .foregroundStyle(.white)
                                                            Text("Remind me")
                                                                .font(.caption)
                                                                .foregroundStyle(.white)
                                                        }
                                                    }
                                                }
                                        }
                                    }
                                   
                                }
                                
                                Spacer()
                                
                            }
                            
                            Divider()
                        }

                    }
                }
                
                
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .background(.green)
            .cornerRadius(20)
            .ignoresSafeArea(edges: .bottom)
            .navigationTitle("Expired Products")
        }

    }
}

#Preview {
    ExpiredProductsListView()
        .environmentObject(ItemsViewModel())
}

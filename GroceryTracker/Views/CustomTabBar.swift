//
//  CustomTabBar.swift
//  GroceryTracker
//
//  Created by Tanmay . on 13/03/25.
//

import SwiftUI

struct CustomTabBar: View {
    @Binding var selectedIndex: Int
    
    var body: some View {
        ZStack(alignment: .bottom) {
            Capsule()
                .fill(.black)
                .frame(maxWidth: .infinity)
                .frame(height: 70)
                .overlay {
                    ZStack {
                        HStack {
                            Spacer()
                            Image(systemName: "house.fill")
                                .foregroundStyle(selectedIndex == 0 ? .green : .white)
                                .font(.system(size: 25))
                                .onTapGesture {
                                    selectedIndex = 0
                                }
                            
                            Spacer()
                            
                            Image(systemName: "heart.fill")
                                .foregroundStyle(selectedIndex == 1 ? .green : .white)
                                .font(.system(size: 25))
                                .onTapGesture {
                                    selectedIndex = 1
                                }
                            Spacer()
                            Spacer()
                            Spacer()
                            Spacer()
                            Image(systemName: "bell.fill")
                                .foregroundStyle(selectedIndex == 2 ? .green : .white)
                                .font(.system(size: 25))
                                .onTapGesture {
                                    selectedIndex = 2
                                }
                            Spacer()
                            
                            Image(systemName: "person.fill")
                                .foregroundStyle(selectedIndex == 3 ? .green : .white)
                                .font(.system(size: 25))
                                .onTapGesture {
                                    selectedIndex = 3
                                }
                            Spacer()
                        }
                        
                        ZStack {
                            Circle()
                                .fill(Color.black)
                                .frame(width: 80, height: 80)
                                .shadow(radius: 10)
                            Circle()
                                .fill(Color.green)
                                .frame(width: 60, height: 60)
                                .shadow(radius: 10)
                            Image(systemName: "ellipsis.viewfinder")
                                .font(.system(size: 25))
                                .foregroundColor(.white)
                                .onTapGesture {
                                    selectedIndex = 4
                                }
                        }
                        .offset(y: -25)
                    }
                }
        }
        
    }
}

#Preview {
    CustomTabBar(selectedIndex: .constant(0))
}

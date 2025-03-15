//
//  FamilyMembersView.swift
//  GroceryTracker
//
//  Created by Tanmay . on 13/03/25.
//

import SwiftUI

struct FamilyMembersView: View {
    
    var body: some View {
        VStack {
            HStack {
                Circle()
                    .frame(width: 55)
                    .foregroundStyle(.green)
                    .overlay {
                        Image(systemName: "person.3")
                            .foregroundStyle(.white)
                            .font(.system(size: 18))
                    }
                
                Text("Total Family Members")
                    .fontWeight(.semibold)
                
                ZStack {
                    Circle()
                        .stroke(lineWidth: 1)
                        .frame(width: 20)
                        .overlay {
                            Text("4")
                                .font(.system(size: 13))
                                .fontWeight(.bold)
                        }
                }
                
                Spacer()
            }
            .padding(.horizontal, 6)
            .padding(.top, 6)
            
            HStack(spacing: 10) {
                
                Spacer()
                VStack {
                    Text("Adults")
                        .foregroundStyle(.green)
                    
                    Text("2")
                        .font(.title3)
                }
                Spacer()
                Text("|")
                    .foregroundStyle(.gray)
                    .fontWeight(.semibold)
                Spacer()
                VStack {
                    Text("Children")
                        .foregroundStyle(.green)
                    
                    Text("1")
                        .font(.title3)
                }
                Spacer()
                
            }
            .frame(width: 350, height: 100)
            .background(.gray.opacity(0.2))
            .cornerRadius(20)
            .padding(.bottom)
            
            Button {
                
            } label: {
                Capsule()
                    .stroke(lineWidth: 1)
                    .foregroundStyle(.gray)
                    .frame(width: 350)
                    .overlay {
                        Text("View")
                            .font(.headline)
                            .foregroundStyle(.green)
                    }
            }
            
            Spacer()
            
        }
        .frame(maxWidth: .infinity)
        .frame(height: 250)
        .background(.white)
        .cornerRadius(20)

    }
}

#Preview {
    FamilyMembersView()
}

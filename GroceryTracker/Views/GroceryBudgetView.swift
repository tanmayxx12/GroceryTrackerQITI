//
//  GroceryBudgetView.swift
//  GroceryTracker
//
//  Created by Tanmay . on 13/03/25.
//

import SwiftUI

struct GroceryBudgetView: View {
    
    var body: some View {
        HStack {
            ZStack {
                Color.green
                
                HStack {
                    Circle()
                        .frame(width: 70)
                        .foregroundStyle(.white)
                        .shadow(radius: 5, x: 0, y: 4)
                        .overlay {
                            Image(systemName: "bag")
                                .font(.system(size: 30))
                                .foregroundStyle(.green)
                        }
                    VStack(alignment: .leading) {
                        Text("€39")
                            .font(.title)
                            .foregroundStyle(.white)
                            .fontWeight(.bold)
                        
                        Text("Your Monthly budget")
                            .foregroundStyle(.white)
                        
                    }
                    
                    Spacer()
                    
                    // For right chevron:
                    ZStack {
                        Circle()
                            .frame(width: 35)
                            .foregroundStyle(.white.opacity(0.3))
                            .overlay {
                                Image(systemName: "chevron.right")
                                    .foregroundStyle(.white)
                            }
                    }
                }
                .padding(.horizontal)
                
            }
            .frame(maxWidth: .infinity)
            .frame(height: 100)
            .cornerRadius(20)
        }
    }
}

#Preview {
    GroceryBudgetView()
}

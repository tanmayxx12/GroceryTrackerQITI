//
//  HeaderView.swift
//  GroceryTracker
//
//  Created by Tanmay . on 13/03/25.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            Circle()
                .frame(width: 40)
                .foregroundStyle(.green)
                .overlay {
                    Image(systemName: "ellipsis.viewfinder")
                        .foregroundStyle(.white)
                }
            
            Text("Grocery Tracker")
                .fontWeight(.semibold)
            
            Spacer()
            
            Button{
                // Action for when the Subscribe button is tapped
            } label: {
                HStack {
                    Image(systemName: "crown.fill")
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                    Text("Subscribe")
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                }
                .frame(width: 150, height: 40)
                .background(.green)
                .cornerRadius(30)
            }
           
        }
    }
}

#Preview {
    HeaderView()
}

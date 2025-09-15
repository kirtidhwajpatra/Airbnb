//
//  SearchAndFilterBar.swift
//  Airbnb
//
//  Created by Uday on 14/09/25.
//

import SwiftUI

struct SearchAndFilterBar: View {
    var body: some View {
        HStack{
            Image(systemName: "magnifyingglass")
            
            VStack(alignment: .leading){
                Text("Search")
                    .font(.footnote)
                    .fontWeight(.semibold)
                Text("Anywhere in the world")
                    .font(.caption2)
                    .foregroundStyle(.secondary)
            }
            
            Spacer()
            
            Button(action: {}) {
                Image(systemName: "line.3.horizontal.decrease.circle")
                    .foregroundStyle(.black)
                    
            }
            
            
        }
        .padding(.horizontal)
        .padding(.vertical, 10)
        .overlay{
            Capsule()
                .stroke(lineWidth: 0.5)
                .foregroundStyle(Color(.systemGray4))
                .shadow(color: .black.opacity(0.4), radius: 2)
        }
        .padding(.horizontal)
        
    }
}

#Preview {
    SearchAndFilterBar()
}

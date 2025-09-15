//
//  ExploreView.swift
//  Airbnb
//
//  Created by Uday on 14/09/25.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        NavigationStack{
            ScrollView{
                SearchAndFilterBar()
                
                LazyVStack(spacing: 32){
                    ForEach(0..<20){listing in
                        
                        NavigationLink(value: listing){
                            ListingItemView()
                                .frame(height: 400)
                                .clipShape(RoundedRectangle(cornerRadius: 14))
                            
                        }
//                        ListingItemView()
                    }
                }
                .padding()
            }
            .navigationDestination(for: Int.self){listing in
                Text("listing details view...")
            }
        }
    }
}

#Preview {
    ExploreView()
}

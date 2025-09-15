//
//  ListingItemView.swift
//  Airbnb
//
//  Created by Uday on 14/09/25.
//

import SwiftUI

struct ListingItemView: View {
    
    var images = ["listing-1",
                  "listing-2",
                  "listing-3"]
    
    var body: some View {
        VStack{
            //images
            ListingImageCarouselView()
                .clipShape(RoundedRectangle(cornerRadius: 10))
            
            //listing details
            HStack(alignment: .top){
                //details
                VStack(alignment: .leading){
                    Text("Miami, florida")
                        .font(.headline)
                        .foregroundStyle(.black)
                    Text("12 mi away")
//                        .font(.caption)
                        .foregroundColor(.secondary)
                    Text("Nov 3 - 10")
//                        .font(.caption)
                        .foregroundColor(.secondary)
                    HStack(alignment:.bottom, spacing: 4){
                        Text("$228")
                            .font(.headline)
                            .foregroundStyle(.black)
                        Text("Night")
//                            .font(.subheadline)
                            .foregroundColor(.black)
                    }
                }
                
                
                Spacer()
                
                //rating
                HStack(spacing: 1){
                    Image(systemName: "star.fill")
                        .foregroundStyle(.black)
                    Text("4.97")
                        .foregroundStyle(.black)
                        .fontWeight(.medium)
                }
            }
            .font(.footnote)
//            .background(Color.gray.opacity(1))
    
            
        }
//        .padding()
    }
}

#Preview {
    ListingItemView()
}

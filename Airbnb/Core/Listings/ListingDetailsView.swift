//
//  ListingDetailsView.swift
//  Airbnb
//
//  Created by Uday on 15/09/25.
//

import SwiftUI

struct ListingDetailsView: View {
    var images = ["listing-1",
                  "listing-2",
                  "listing-3"]
    
    var body: some View {
        ScrollView {
            ListingImageCarouselView()
                .frame(height: 300)
            
            VStack(alignment: .leading, spacing: 8) {
                Text("Miami Beach House")
                    .font(.title)
                    .fontWeight(.semibold)
            
                HStack {
                    ListingRatingView()
                    
                    Text("-")
                        
                    
                    Text("28 reviews")
                        .underline()
                }
                .font(.caption)
                .foregroundStyle(.black)
                
                Text("Miami, Florida")
                    .font(.caption)
            }
            .padding(.leading)
            .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            
            //host info view
            
            HStack {
                VStack(alignment: .leading, spacing: 6){
                    Text("Entire Villa hosted by John smith")
                        .font(.headline)
                        .frame(width: 250, alignment: .leading)
                    
                    HStack {
                        Text("4 guests -")
                        Text("4 bedroom -")
                        Text("4 beds -")
                        Text("2 baths")
                    } .font(.caption)
                        .frame(width: 250, alignment: .leading)
                }
//                .frame(width: 290, alignment: .leading)
                Spacer()
                
                Image("Profile_Photo")
                    .resizable()
                    .offset(x: 5)
                    .scaledToFill()
                    .frame(width: 80, height: 80)
                    .clipShape(Circle())
            }.padding()
            
            Divider()
            
            //listing features
            
            VStack(alignment: .leading, spacing: 12){
                HStack{
                    Image(systemName: "medal")
                    
                    VStack(alignment: .leading, spacing: 2){
                        Text("Self check-in")
                            .font(.footnote)
                            .fontWeight(.medium)
                        Text("check yourself in with the keypad.")
                            .font(.caption)
                            .foregroundStyle(.secondary)
                    }
                }
                
                HStack{
                    Image(systemName: "door.left.hand.open")
                    
                    VStack(alignment: .leading, spacing: 2){
                        Text("Superhost")
                            .font(.footnote)
                            .fontWeight(.medium)
                        Text("Superhosts are experienced, hightly rated hosts who are commited to proving greate stars for guests.")
                            .font(.caption)
                            .foregroundStyle(.secondary)
                            .frame(width: 300)
                    }
                    
                        
                }
            } .padding()
                .frame(maxWidth: .infinity, alignment: .leading)
            
            Divider()
            
        }
    }
}

#Preview {
    ListingDetailsView()
}

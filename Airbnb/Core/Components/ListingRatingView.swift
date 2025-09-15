//
//  ListingRatingView.swift
//  Airbnb
//
//  Created by Uday on 15/09/25.
//

import SwiftUI

struct ListingRatingView: View {
    var body: some View {
        HStack(spacing: 1){
            Image(systemName: "star.fill")
                .foregroundStyle(.black)
            Text("4.97")
                .foregroundStyle(.black)
                .fontWeight(.medium)
        }
    }
}

#Preview {
    ListingRatingView()
}

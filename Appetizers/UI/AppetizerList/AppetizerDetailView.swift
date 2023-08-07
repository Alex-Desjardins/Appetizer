//
//  AppetizerDetailView.swift
//  Appetizers
//
//  Created by Alex Desjardins on 7/30/23.
//

import SwiftUI

struct AppetizerDetailView: View {
    
    let appetizer: Appetizer
    
    @Binding var isShowingDetailView: Bool
    
    var body: some View {
        VStack {
            AppetizerRemoteImage(urlString: appetizer.imageURL)
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 225)
            VStack {
                Text(appetizer.name)
                    .font(.title2)
                    .fontWeight(.semibold)
                Text(appetizer.description)
                    .multilineTextAlignment(.center)
                    .font(.body)
                    .padding()
            }
            HStack(spacing: 40) {
                NutritionalInfo(title: "Calories", value: appetizer.calories)
                NutritionalInfo(title: "Carbs", value: appetizer.carbs)
                NutritionalInfo(title: "Protein", value: appetizer.protein)
            }
            Spacer()
            Button{
                print("Tapped")
            } label: {
                RectangleButton(title: "$\(appetizer.price, specifier: "%.2f") - Add to Order")
            }
            .padding(.bottom, 30)
        }
        .frame(width: 300, height: 525)
        .background(Color(.systemBackground))
        .cornerRadius(12)
        .shadow(radius: 40)
        .overlay(Button {
            isShowingDetailView = false
        } label: {
            XDismissButton()
        }, alignment: .topTrailing)
    }
}

struct AppetizerDetailView_Previews: PreviewProvider {
    static var previews: some View {
        AppetizerDetailView(appetizer: MockData.sampleAppetizer,
                            isShowingDetailView: .constant(true))
    }
}

struct NutritionalInfo: View {
    let title: String
    let value: Int
    
    var body: some View {
        VStack(spacing: 5) {
            Text(title)
                .bold()
                .font(.caption)
            Text("\(value)")
                .foregroundColor(.secondary)
                .fontWeight(.semibold)
                .italic()
        }
    }
}

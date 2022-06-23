//
//  RecipeRateingView.swift
//  Avocate
//
//  Created by Manny Alvarez on 23/06/2022.
//

import SwiftUI

struct RecipeRatingView: View {
    // MARK: - Properties
    var recipe: Recipe

    // MARK: - Body
    var body: some View {
        //Rates
        HStack(alignment: .center, spacing: 5) {
            ForEach(1...(recipe.rating), id: \.self) { _ in
                Image(systemName: "star.fill")
                    .font(.body)
                    .foregroundColor(.yellow)
            }//Loop
        }//:HStack
    }
}

// MARK: - Preview
struct RecipeRateingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeRatingView(recipe: recipesData[0])
            .previewLayout(.fixed(width: 320, height: 60))
    }
}

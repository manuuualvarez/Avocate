//
//  RecipeCookingView.swift
//  Avocate
//
//  Created by Manny Alvarez on 23/06/2022.
//

import SwiftUI

struct RecipeCookingView: View {
    // MARK: - Properties
    var recipe: Recipe

    // MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 12) {
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "person.2")
                Text("Serves: \(recipe.serves)")
            }//:HStack
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "clock")
                Text("Prep: \(recipe.preparation)")
            }//:HStack
            HStack(alignment: .center, spacing: 2) {
                Image(systemName: "flame")
                Text("Cooking: \(recipe.cooking)")
            }//:HStack
        }//:HStack
        .font(.footnote)
        .foregroundColor(.gray)
    }
}

// MARK: - Preview
struct RecipeCookingView_Previews: PreviewProvider {
    static var previews: some View {
        RecipeCookingView(recipe: recipesData[0])
            .previewLayout(.fixed(width: 320, height: 60))
    }
}

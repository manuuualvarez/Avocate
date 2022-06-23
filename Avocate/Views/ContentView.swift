//
//  ContentView.swift
//  Avocate
//
//  Created by Manny Alvarez on 16/06/2022.
//

import SwiftUI

struct ContentView: View {
    //    MARK: - Properties
    var headers: [Header]
    var facts: [Fact]
    var recipes: [Recipe]
    
    
    //    MARK: - Body
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                //    MARK: - Header
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 0){
                        ForEach(headers) { item in
                            HeaderView(header: item)
                        }
                    }//:HStack
                }//:ScrollView
                //    MARK: - Dishes
                Text("Avocado Dishes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                DisherView()
                    .frame(maxWidth: 640)
                
                //    MARK: - Fact
                Text("Avocado Facts")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                ScrollView(.horizontal, showsIndicators: false) {
                    HStack(alignment: .top, spacing: 60) {
                        ForEach(facts) { item in
                            FactsView(fact: item)
                        }//:Loop
                    }//:HStack
                    .padding(.vertical)
                    .padding(.leading, 60)
                    .padding(.trailing, 20)
                }//:ScrollView
                
                //    MARK: - Recipe Card
                Text("Avocado Recipes")
                    .fontWeight(.bold)
                    .modifier(TitleModifier())
                
                VStack(alignment: .center, spacing: 20) {
                    ForEach(recipes) { item in
                        RecipeCardView(recipe: item)
                    }//:Loop
                }//:VStack
                .frame(maxWidth: 640)
                .padding(.horizontal)
            
                //    MARK: - Footer
                VStack(alignment: .center, spacing: 20) {
                    Text("All About Avocados")
                        .fontWeight(.bold)
                    Text("Everything you wanted to know about avocados but were too afraid to ask.")
                        .font(.system(.body, design: .serif))
                        .multilineTextAlignment(.center)
                        .foregroundColor(.gray)
                        .frame(minHeight: 60)
                }//:VStack
                .frame(maxWidth: 640)
                .padding()
                .padding(.bottom, 85)
            }//:VStack
        }//:ScrollView
        .edgesIgnoringSafeArea(.all)
        .padding(0)
    }
}

struct TitleModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.system(.title, design: .serif))
            .foregroundColor(Color("ColorGreenAdaptive"))
            .padding(8)
    }
}
//    MARK: - Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(headers: headerData, facts: factsData, recipes: recipesData)
    }
}

//
//  AppView.swift
//  Avocate
//
//  Created by Manny Alvarez on 16/06/2022.
//

import SwiftUI

struct AppView: View {
    // MARK: - Properties
    
    // MARK: - Body
    var body: some View {
        TabView {
            AvocadosView()
                .tabItem {
                    Image("tabicon-branch")
                    Text("Avocados")
                }//Item
            ContentView(headers: headerData, facts: factsData, recipes: recipesData)
                .tabItem {
                    Image("tabicon-book")
                    Text("Recipes")
                }//Item
            RipeningStagesView()
                .tabItem {
                    Image("tabicon-avocado")
                    Text("Ripening")
                }//Item
            SettingsView()
                .tabItem {
                    Image("tabicon-settings")
                    Text("Settings")
                }//Item
        }//TabView
        .edgesIgnoringSafeArea(.top)
        .edgesIgnoringSafeArea(.bottom)
        .accentColor(Color.primary)
        
        
        
    }
}

// MARK: - Preview
struct AppView_Previews: PreviewProvider {
    static var previews: some View {
        AppView()
    }
}

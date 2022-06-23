//
//  SettingsView.swift
//  Avocate
//
//  Created by Manny Alvarez on 16/06/2022.
//

import SwiftUI

struct SettingsView: View {
    // MARK: - Properties
    @State private var enableNotification: Bool = true
    @State private var backgroundRefresh: Bool = false

    // MARK: - Body
    var body: some View {
        VStack(alignment: .center, spacing: 0) {
            VStack(alignment: .center, spacing: 5) {
                Image("avocado")
                    .resizable()
                    .scaledToFit()
                    .padding(.top)
                    .frame(width: 100, height: 100, alignment: .center)
                    .shadow(color: Color("ColorBlackTransparentLight"), radius: 8, x: 0, y: 4)
                
                
                Text("Avocado".uppercased())
                    .font(.system(.title, design: .serif))
                    .fontWeight(.bold)
                .foregroundColor(Color("ColorGreenAdaptive"))
            }//VStack
            .padding()
            
            Form {
                //Section 1
                Section(header: Text("General Settings")) {
                    Toggle(isOn: $enableNotification) {
                        Text("Enable notification")
                    }//Toggle
                    Toggle(isOn: $backgroundRefresh) {
                        Text("Background Refresh")
                    }//Toggle
                }//Section1
                
                //Section 2
                Section(header: Text("Application")) {
                    if enableNotification {
                        HStack {
                            Text("Product")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Avocado Recipes")
                        }
                        HStack {
                            Text("Compatibility")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("iPhone & iPAd")
                        }//HStack
                        
                        HStack {
                            Text("Developer")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Manu Alvarez")
                        }//HStack
                        
                        HStack {
                            Text("Designer")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Manu Alvarez")
                        }//HStack
                        
                        HStack {
                            Text("WebSite")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("manuelalvarez.io")
                        }//HStack
                        
                        HStack {
                            Text("Version")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("1.0.0")
                        }//HStack
                    } else {
                        HStack {
                            Text("Personal message")
                                .foregroundColor(.gray)
                            Spacer()
                            Text("Happy Coding")
                        }
                    }//HStack
                    

                }//Section2
                
                
            }//Form
        }//VStack
        .frame(maxWidth: 640)
    }
}

// MARK: - Preview
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}

//
//  DisherView.swift
//  Avocate
//
//  Created by Manny Alvarez on 16/06/2022.
//

import SwiftUI

struct DisherView: View {
    // MARK: - Properties


    // MARK: - Body
    var body: some View {
        HStack(alignment: .center, spacing: 4) {
            //    MARK: - 1. Colum
            VStack (alignment: .leading, spacing: 4) {
                HStack {
                    Image("icon-toasts")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Toasts")
                }//:HStack
                Divider()
                HStack {
                    Image("icon-tacos")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Tacos")
                }//:HStack
                Divider()
                HStack {
                    Image("icon-salads")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Saladas")
                }//:HStack
                Divider()
                HStack {
                    Image("icon-halfavo")
                        .resizable()
                        .modifier(IconModifier())
                    Spacer()
                    Text("Spreads")
                }//:HStack
            }//:VStack
            
            //    MARK: - 2. Column
            VStack(alignment: .center, spacing: 16) {
                HStack {
                    Divider()
                }
                Image(systemName: "heart.circle")
                    .font(Font.title.weight(.ultraLight))
                    .imageScale(.large)
                HStack {
                    Divider()
                }
            }//Vstack
            
            //    MARK: - 3. Column
            VStack (alignment: .trailing, spacing: 4) {
                HStack {
                    Text("Guacamole")
                    Spacer()
                    Image("icon-guacamole")
                        .resizable()
                        .modifier(IconModifier())
                }//:HSTack
                Divider()
                HStack {
                    Text("Sandwiches")
                    Spacer()
                    Image("icon-sandwiches")
                        .resizable()
                        .modifier(IconModifier())
                }//:HSTack
                Divider()
                HStack {
                    Text("Soup")
                    Spacer()
                    Image("icon-soup")
                        .resizable()
                        .modifier(IconModifier())
                }//:HSTack
                Divider()
                HStack {
                    Text("Smoothie")
                    Spacer()
                    Image("icon-smoothies")
                        .resizable()
                        .modifier(IconModifier())
                }//:HSTack
            }//:Vstack
            
        }//:HStack
        .font(.system(.callout, design: .serif))
        .foregroundColor(.gray)
        .padding(.horizontal)
        .frame(maxHeight: 220)
    }
}

struct IconModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .frame(width: 42, height: 42, alignment: .center)
    }
}

// MARK: - Preview
struct DisherView_Previews: PreviewProvider {
    static var previews: some View {
        DisherView()
            .previewLayout(.fixed(width: 414, height: 280))
    }
}

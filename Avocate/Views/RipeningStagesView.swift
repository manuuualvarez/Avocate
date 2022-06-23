//
//  RipeningStagesView.swift
//  Avocate
//
//  Created by Manny Alvarez on 16/06/2022.
//

import SwiftUI

struct RipeningStagesView: View {
    // MARK: - Properties
    var ripeningStages: [Ripening] = ripeningData

    // MARK: - Body
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            VStack {
                Spacer()
                HStack(alignment: .center, spacing: 25) {
                    ForEach(ripeningStages) { item in
                        RipeningView(ripe: item)
                    }
                }//HStack
                .padding(.vertical)
                .padding(.horizontal, 25)
                Spacer()
            }//VStack
        }//Scroll
        .edgesIgnoringSafeArea(.all)
    }
}

// MARK: - Preview
struct RipeningStagesView_Previews: PreviewProvider {
    static var previews: some View {
        RipeningStagesView(ripeningStages: ripeningData)
    }
}

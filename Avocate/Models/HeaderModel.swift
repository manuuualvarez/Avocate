//
//  HeaderModel.swift
//  Avocate
//
//  Created by Manny Alvarez on 16/06/2022.
//

import SwiftUI


struct Header: Identifiable {
    var id: UUID = UUID()
    var image: String
    var headline: String
    var subheadline: String
}

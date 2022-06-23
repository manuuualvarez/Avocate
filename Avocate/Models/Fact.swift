//
//  FactModel.swift
//  Avocate
//
//  Created by Manny Alvarez on 23/06/2022.
//

import Foundation


struct Fact: Identifiable {
    var id = UUID()
    var image: String
    var content: String
}

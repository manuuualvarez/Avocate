//
//  RipeningModel.swift
//  Avocate
//
//  Created by Manny Alvarez on 23/06/2022.
//

import Foundation


struct Ripening: Identifiable {
    var id = UUID()
    var image: String
    var stage: String
    var title: String
    var description: String
    var ripeness: String
    var instruction: String
}

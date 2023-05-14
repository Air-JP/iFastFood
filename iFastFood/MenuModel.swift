//
//  MenuModels.swift
//  iFastFood
//
//  Created by Jose Portilla Portilla on 10/5/23.
//

import Foundation

struct MenuModel: Codable, Identifiable {
    let  id: UUID
    let name: String
    let items: [MenuDishes]
}

struct MenuDishes: Codable {
    let id: UUID
    let name: String
    let photoCredit: String
    let price: Int
    let restrictions: [String]
    let description: String
    
    var mainImage: String {
        name.replacingOccurrences(of: " ", with: "-").lowercased()
    }
    
    var thumbnailImage: String {
        mainImage.appending("thumb")
    }
}

//
//  Persistence.swift
//  iFastFood
//
//  Created by Jose Portilla Portilla on 10/5/23.
//

import Foundation

final class Persistence {
    static let shared = Persistence()
    
    private init() {}
    
    func fetchData() throws -> [MenuModel] {
        return Bundle.main.decode(type: [MenuModel].self, from: "menu.json")
    }
}

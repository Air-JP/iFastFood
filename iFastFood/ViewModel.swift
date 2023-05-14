//
//  ViewModel.swift
//  iFastFood
//
//  Created by Jose Portilla Portilla on 14/5/23.
//

import Foundation

final class ViewModel: ObservableObject {
    let persistance = Persistence.shared
    
    @Published var menuItems: [MenuModel] = []
    
    init() {
        do {
            menuItems = try persistance.fetchData()
        } catch {
            print("Fail loading data")
            menuItems = []
        }
    }
}

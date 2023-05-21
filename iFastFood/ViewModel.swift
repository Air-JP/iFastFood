//
//  ViewModel.swift
//  iFastFood
//
//  Created by Jose Portilla Portilla on 14/5/23.
//

import Foundation

final class ViewModel: ObservableObject {
    let persistence = Persistence.shared
    
    @Published var menuItems: [MenuModel] = []
    @Published var orderedDishes: [MenuDishes] = []
    @Published var search = ""
    
    var filteredDishes: [MenuDishes] {
        if  search.isEmpty {
            return menuItems.flatMap { $0.items }
        } else {
            return menuItems.flatMap { $0.items }.filter {
                $0.name.localizedCaseInsensitiveContains(search)
            }
        }
    }
    
    init() {
        do {
            menuItems = try persistence.fetchData()
        } catch {
            print("Fail loading data")
            menuItems = []
        }
    }
    
    func showDish(dish: MenuDishes) -> Bool {
        search.isEmpty || dish.name.lowercased().contains(search.lowercased())
    }
    
    func addDishToOrder(dish: MenuDishes) {
        orderedDishes.append(dish)
        print(orderedDishes)
    }
}


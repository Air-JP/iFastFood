//
//  iFastFoodApp.swift
//  iFastFood
//
//  Created by Jose Portilla Portilla on 10/5/23.
//

import SwiftUI

@main
struct iFastFoodApp: App {
    @StateObject var vm = ViewModel()
    @StateObject var orderVM = OrderViewModel()
    
    var body: some Scene {
        WindowGroup {
            MainTabView()
                .environmentObject(vm)
                .environmentObject(orderVM)
        }
    }
}

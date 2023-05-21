//
//  MainTabView.swift
//  iFastFood
//
//  Created by Jose Portilla Portilla on 21/5/23.
//

import SwiftUI

struct MainTabView: View {
    var body: some View {
        TabView {
            MainMenuListView()
                .tabItem {
                    Label("Menu", systemImage: "list.dash")
                }
            
            OrderListView()
                .tabItem {
                    Label("Order", systemImage: "square.and.pencil")
                }
        }
    }
}

struct MainTabView_Previews: PreviewProvider {
    static var previews: some View {
        MainTabView()
            .environmentObject(ViewModel())
    }
}

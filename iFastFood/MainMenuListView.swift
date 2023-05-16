//
//  MainMenuListView.swift
//  iFastFood
//
//  Created by Jose Portilla Portilla on 14/5/23.
//

import SwiftUI

struct MainMenuListView: View {
    @ObservedObject var vm = ViewModel()
    
    var body: some View {
        List {
            ForEach(vm.menuItems) { section in
                Section(section.name) {
                    ForEach(section.items) { dish in
                        MainListCellView(menuDish: dish)
                    }
                }
            }
        }
    }
}

struct MainMenuListView_Previews: PreviewProvider {
    static var previews: some View {
        MainMenuListView()
    }
}

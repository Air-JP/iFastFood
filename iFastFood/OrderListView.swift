//
//  OrderListView.swift
//  iFastFood
//
//  Created by Jose Portilla Portilla on 21/5/23.
//

import SwiftUI

struct OrderListView: View {
    @EnvironmentObject var vm: ViewModel
    
    var body: some View {
        NavigationStack {
            List {
                Section{
                    ForEach(vm.orderedDishes) { dish in
                        HStack {
                            Text(dish.name)
                            Spacer()
                            Text("$\(dish.price)")
                        }
                    }
                    .onDelete { vm.orderedDishes.remove(atOffsets: $0) }
                    .onMove { vm.orderedDishes.move(fromOffsets: $0, toOffset: $1) }
                }
                Section {
                    Button {
                        
                    } label: {
                        Text("Confirm Order")
                    }
                    .frame(maxWidth: .infinity, alignment: .center)
                    .buttonStyle(.bordered)
                    .listRowBackground(Color.clear)
                }
                .disabled(vm.orderedDishes.isEmpty)
            }
            .navigationTitle("Order")
//            .toolbar {
//                EditButton()
//            }
        }
    }
}

struct OrderListView_Previews: PreviewProvider {
    static var previews: some View {
        OrderListView()
            .environmentObject(ViewModel())
    }
}

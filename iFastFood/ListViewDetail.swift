//
//  ListViewDetail.swift
//  iFastFood
//
//  Created by Jose Portilla Portilla on 16/5/23.
//

import SwiftUI

struct ListDetailView: View {
    @EnvironmentObject var vmOrder: OrderViewModel
    
    let  dish: MenuDishes
    
    var body: some View {
        VStack {
            ZStack(alignment: .bottomTrailing) {
                Image(dish.mainImage)
                    .resizable()
                    .scaledToFit()
                
                Text("Photo: \(dish.photoCredit)")
                    .padding(4)
                    .background(.black)
                    .font(.caption)
                    .foregroundColor(.white)
                    .offset(x: -5, y: -5)
            }
            
            Text(dish.description)
                .padding()
            
            Button {
                vmOrder.addDishToOrder(dish: dish)
            } label: {
                Text("Order This")
            }
            .buttonStyle(.borderedProminent)
            
            Spacer()
        }
        .navigationTitle(dish.name)
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct ListDetailView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack {
            ListDetailView(dish: .previewDish)
                .environmentObject(OrderViewModel())
        }
    }
}

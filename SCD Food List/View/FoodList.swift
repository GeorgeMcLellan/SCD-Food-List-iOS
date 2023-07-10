//
//  FoodList.swift
//  SCD Food List
//
//  Created by George McLellan on 7/9/20.
//  Copyright © 2020 George McLellan. All rights reserved.
//

import SwiftUI

struct FoodList: View {
    @State private var searchText = ""

    var body: some View {
        NavigationView {
            VStack {
                SearchBar(text: $searchText)
                
                let filteredFoods = FoodListData.filter { searchText.isEmpty ? true : $0.name.lowercased().contains(searchText.lowercased()) }
                
                List(filteredFoods) { food in
                    NavigationLink(destination: FoodDetail(food: food)) {
                        FoodRow(food: food)
                        
                    }
                    .listRowSeparator(.hidden)
                    .listRowInsets(EdgeInsets(top: 5, leading: 15, bottom: 5, trailing: 15))
                }
                .listStyle(.inset)
            }
            .navigationTitle(Text("SCD Food List"))
            .navigationBarTitleDisplayMode(.inline)
        
        }
    }
}

struct FoodList_Previews: PreviewProvider {
    static var previews: some View {
        FoodList()
    }
}

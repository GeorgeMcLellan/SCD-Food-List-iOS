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
                List(FoodListData.filter { searchText.isEmpty ? true : $0.name.lowercased().contains(searchText.lowercased()) }) { food in
                    NavigationLink(destination: FoodDetail(food: food)) {
                        FoodRow(food: food)
                    }
                    
                }
            }
            .navigationBarTitle(Text("SCD Food List"))
        }
    }
}

struct FoodList_Previews: PreviewProvider {
    static var previews: some View {
        FoodList()
    }
}

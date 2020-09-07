//
//  FoodRow.swift
//  SCD Food List
//
//  Created by George McLellan on 23/8/20.
//  Copyright © 2020 George McLellan. All rights reserved.
//

import SwiftUI

struct FoodRow: View {
    var food: Food
    var body: some View {
        VStack(alignment: .leading) {
            Text(food.name)
            Text(food.foodGroup.rawValue)
        }
        .frame(minWidth: 0, maxWidth: .infinity, alignment: .leading)
    .padding()
    }
}

struct FoodRow_Previews: PreviewProvider {
    static var previews: some View {
        FoodRow(food: FoodListData[20])
    }
}

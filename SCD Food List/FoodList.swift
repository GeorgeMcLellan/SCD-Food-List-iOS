//
//  FoodList.swift
//  SCD Food List
//
//  Created by George McLellan on 7/9/20.
//  Copyright © 2020 George McLellan. All rights reserved.
//

import SwiftUI

struct FoodList: View {
    var body: some View {
        List(FoodListData) { food in
            FoodRow(food: food)
        }
    }
}

struct FoodList_Previews: PreviewProvider {
    static var previews: some View {
        FoodList()
    }
}

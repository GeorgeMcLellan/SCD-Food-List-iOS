//
//  FoodDetail.swift
//  SCD Food List
//
//  Created by George McLellan on 2/10/20.
//  Copyright © 2020 George McLellan. All rights reserved.
//

import SwiftUI

struct FoodDetail: View {
    var food: Food
    var body: some View {
        Text(food.description)
    }
}

struct FoodDetail_Previews: PreviewProvider {
    static var previews: some View {
        FoodDetail(food: FoodListData[1])
    }
}

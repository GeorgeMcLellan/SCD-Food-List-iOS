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
        VStack(alignment: .center) {
            Text(food.name)
                .font(.title)
                .padding()
            HStack {
                Text(food.allowed.rawValue)
                    .foregroundColor(getAllowedColor(foodAllowed: food.allowed))
                    .italic()
                    .font(.system(size: 18))
                    .padding()
                    
                Spacer()
                Text(food.foodGroup.rawValue)
                    .padding()
                    .font(.system(size: 18))
            }
            HStack {
                Text(food.description).padding()
                Spacer()
            }
            Spacer()
        }
    }
}

func getAllowedColor(foodAllowed: FoodAllowed) -> Color {
    switch(foodAllowed) {
    case .legal: return .greenTextColor
    case .illegal: return .redTextColor
    case .warning: return .yellowTextColor
    }
}

struct FoodDetail_Previews: PreviewProvider {
    static var previews: some View {
        FoodDetail(food: FoodListData[3])
    }
}

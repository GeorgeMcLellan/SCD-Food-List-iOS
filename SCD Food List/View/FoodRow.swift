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
        HStack() {
            VStack(alignment: .leading) {
                Text(food.name)
                Text(food.foodGroup.rawValue)
                    .font(.system(size: 14))
            }
            Spacer()
            if !food.description.isEmpty {
                Image("info_icon")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .contrast(0)
                    
            }
        }
        .padding(EdgeInsets(top: 5, leading: 10, bottom: 5, trailing: 10))
        .background(getBackgroundColor(foodAllowed: food.allowed))
        .cornerRadius(4)

    }
}

func getBackgroundColor(foodAllowed: FoodAllowed) -> Color {
    switch(foodAllowed) {
    case .legal: return .green
    case .illegal: return .red
    case .warning: return .yellow
    }
}

struct FoodRow_Previews: PreviewProvider {
    static var previews: some View {
        FoodRow(food: FoodListData[20])
    }
}

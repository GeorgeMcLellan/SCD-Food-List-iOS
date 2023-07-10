//
//  Food.swift
//  SCD Food List
//
//  Created by George McLellan on 23/8/20.
//  Copyright © 2020 George McLellan. All rights reserved.
//

import Foundation

struct Food: Identifiable {
    var id = UUID()
    var name: String
    var allowed: FoodAllowed
    var foodGroup: FoodGroup = .miscellaneous
    var description: String = ""
}

enum FoodAllowed: String {
    case legal = "Legal"
    case illegal = "Illegal"
    case warning = "Warning"
}

enum FoodGroup: String {
    case animalProteins = "Animal Proteins"
    case dairy = "Dairy"
    case fatsAndOils = "Fats & Oils"
    case grains = "Grains"
    case starch = "Starches"
    case nutsAndSeeds = "Nuts & Seeds"
    case legumes = "Legumes"
    case vegetables = "Vegetables"
    case nightshadeVegetables = "Nightshade Vegetables"
    case fruit = "Fruit"
    case spices = "Spices"
    case sauces = "Sauces"
    case sweeteners = "Sweeteners"
    case herbs = "Herbs"
    case miscellaneous = "Miscellaneous"
    case drinks = "Drinks"
    case additives = "Additives"
}

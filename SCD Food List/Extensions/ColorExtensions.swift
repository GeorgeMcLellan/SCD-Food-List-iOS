//
//  ColorExtensions.swift
//  SCD Food List
//
//  Created by George McLellan on 7/10/20.
//  Copyright © 2020 George McLellan. All rights reserved.
//

import Foundation
import SwiftUI

extension Color {
    public static var redBackground: Color {
        return Color(red: 1, green: 0, blue: 0, opacity: 0.27)
    }
    public static var greenBackground: Color {
        return Color(red: 0, green: 1, blue: 0, opacity: 0.27)
    }
    public static var yellowBackground: Color {
        return Color(red: 1, green: 1, blue: 0, opacity: 0.27)
    }
    public static var redTextColor: Color {
        return Color(red: 181 / 255, green: 25 / 255, blue: 25 / 255, opacity: 1)
    }
    public static var greenTextColor: Color {
        return Color(red: 45 / 255, green: 145 / 255, blue: 45 / 255, opacity: 1)
    }
    public static var yellowTextColor: Color {
        return Color(red: 201 / 255, green: 201 / 255, blue: 34 / 255, opacity: 1)
    }
}

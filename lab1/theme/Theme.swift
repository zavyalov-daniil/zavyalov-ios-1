//
//  Theme.swift
//  lab1
//
//  Created by dezavv on 11/23/23.
//

import Foundation
import SwiftUI

extension Color {
    static let backgroundGray = Color(red: 0.98, green: 0.98, blue: 0.98)
    static let textGray = Color(red: 0.53, green: 0.59, blue: 0.73)
    static let textHeading = Color(red: 0.05, green: 0.11, blue: 0.2)
    static let textCommon = Color(red: 0.8, green: 0.88, blue: 1)
    static let backgroundBlue = Color(red: 0.28,  green: 0.58, blue: 1)
    static let devider = Color.white.opacity(0.8)
}

extension Image {
    static let firstDoctor = Image("Doc")
    static let searchNormal = Image("search-normal")
    static let clock = Image("clock")
    static let calendar = Image("calendar-2")
    static let arrowRight = Image("arrow-right")
    static let frame = Image("Frame")
}

extension Font {
    static let poppinsMiddle = Font.custom("Poppins", size: 15)
    static let poppinsBold = Font.custom("Poppins", size: 16).weight(.bold)
    static let poppins = Font.custom("Poppins", size: 16)
    static let poppinsBoldHeading = Font.custom("Poppins", size: 20).weight(.bold)
    static let poppinsCommon = Font.custom("Poppins", size: 14)
    static let poppinsSmall = Font.custom("Poppins", size: 12)
}

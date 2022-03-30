//
//  Discount.swift
//  Components
//
//  Created by Esteban Cardona Alvarez on 29/03/22.
//

import Foundation

struct DiscountViewState {
    var icon: String
    var labelAccessibility: String
    var labelTitle: String
    var labelPrice: String
    var action: () -> Void
}

struct DiscountSectionViewState {
    var title: String
    var subtitle: String
    var discounts: [DiscountViewState]
    var buttonViewState: ButtonViewState
}

extension DiscountViewState {
    static let mcdonalds = DiscountViewState(icon: "mcdonalds", labelAccessibility: "", labelTitle: "Hasta", labelPrice: "$200", action: {})
    static let wendys = DiscountViewState(icon: "wendys", labelAccessibility: "", labelTitle: "Hasta", labelPrice: "$150", action: {})
    static let h = DiscountViewState(icon: "h", labelAccessibility: "", labelTitle: "Hasta", labelPrice: "$100", action: {})
    static let freddo = DiscountViewState(icon: "freddo", labelAccessibility: "", labelTitle: "Hasta", labelPrice: "$300", action: {})
    static let pain = DiscountViewState(icon: "pain", labelAccessibility: "", labelTitle: "Hasta", labelPrice: "$50", action: {})
    static let greenEat = DiscountViewState(icon: "green-eat", labelAccessibility: "", labelTitle: "Hasta", labelPrice: "$30", action: {})
}

extension DiscountSectionViewState {
    static let example = DiscountSectionViewState(
        title: "Descuentos por tu nivel",
        subtitle: "35 exclusivos por tu nivel",
        discounts: [.mcdonalds, .wendys, .h, .freddo, .pain, .greenEat],
        buttonViewState: .secondaryExample
    )
}

//
//  Discount.swift
//  Components
//
//  Created by Esteban Cardona Alvarez on 29/03/22.
//

import Foundation

struct DiscountModel: Codable {
    var icon: String
    var labelAccessibility: String
    var labelTitle: String
    var labelPrice: String
}

struct DiscountViewState {
    var icon: String
    var labelAccessibility: String
    var labelTitle: String
    var labelPrice: String
    var action: () -> Void
    
    init(model: DiscountModel, action: @escaping () -> Void) {
        icon = model.icon
        labelAccessibility = model.labelAccessibility
        labelTitle = model.labelTitle
        labelPrice = model.labelPrice
        self.action = action
    }
}

struct DiscountSectionViewState {
    var title: String
    var subtitle: String
    var discounts: [DiscountViewState]
    var buttonViewState: ButtonViewState
}

extension DiscountViewState {
    static let mcdonalds = DiscountViewState(model: DiscountModel(icon: "mcdonalds", labelAccessibility: "", labelTitle: "Hasta", labelPrice: "$200") , action: {})
    static let wendys = DiscountViewState(model: DiscountModel(icon: "wendys", labelAccessibility: "", labelTitle: "Hasta", labelPrice: "$150"), action: {})
    static let h = DiscountViewState(model: DiscountModel(icon: "h", labelAccessibility: "", labelTitle: "Hasta", labelPrice: "$100"), action: {})
    static let freddo = DiscountViewState(model: DiscountModel(icon: "freddo", labelAccessibility: "", labelTitle: "Hasta", labelPrice: "$300"), action: {})
    static let pain = DiscountViewState(model: DiscountModel(icon: "pain", labelAccessibility: "", labelTitle: "Hasta", labelPrice: "$50"), action: {})
    static let greenEat = DiscountViewState(model: DiscountModel(icon: "green-eat", labelAccessibility: "", labelTitle: "Hasta", labelPrice: "$30"), action: {})
}

extension DiscountSectionViewState {
    static let example = DiscountSectionViewState(
        title: "Descuentos por tu nivel",
        subtitle: "35 exclusivos por tu nivel",
        discounts: [.mcdonalds, .wendys, .h, .freddo, .pain, .greenEat],
        buttonViewState: .init(type: .secondary, label: "Ver todos los descuentos", labelAccessibility: "", action: {})
    )
}

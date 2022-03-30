//
//  ButtonViewState.swift
//  Components
//
//  Created by Esteban Cardona Alvarez on 29/03/22.
//

import Foundation

struct ButtonViewState {
    var type: ButtonType
    var label: String
    var labelAccessibility: String?
    var action: () -> Void
}

extension ButtonViewState {
    static var primaryExample = Self(
        type: .primary,
        label: "{primary}",
        labelAccessibility: "{primary}",
        action: {}
    )
    static var secondaryExample = Self(
        type: .secondary,
        label: "{secondary}",
        labelAccessibility: "{secondary}",
        action: {}
    )
    static var transparentExample = Self(
        type: .trasparent,
        label: "{trasparent}",
        labelAccessibility: "{trasparent}",
        action: {}
    )
}

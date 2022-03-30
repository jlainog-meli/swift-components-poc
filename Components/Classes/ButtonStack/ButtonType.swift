//
//  ButtonType.swift
//  Components
//
//  Created by Esteban Cardona Alvarez on 29/03/22.
//

import Foundation
import SwiftUI

enum ButtonType {
    case primary, secondary, trasparent
}

extension ButtonType {
    var textColor: Color {
        switch self {
        case .primary:
            return .white
        case .secondary:
            return .blue
        case .trasparent:
            return .blue
        }
    }
    var backgroundColor: Color {
        switch self {
        case .primary:
            return .blue
        case .secondary:
            return .blue.opacity(0.5)
        case .trasparent:
            return .clear
        }
    }
}

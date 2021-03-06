//
//  OperationViewState.swift
//  Components
//
//  Created by Esteban Cardona Alvarez on 30/03/22.
//

import Foundation

struct OperationViewState: Codable {
    var icon: String
    var title: String
    var subtitle: String
    var labelAccessibility: String?
}

extension OperationViewState {
    static var masterCardExample = OperationViewState(icon: "mc",
                                               title: "$ 12.000",
                                               subtitle: "Santander Rio ****3260")
    static var operationExample = OperationViewState(icon: "operation",
                                                     title: "Operación #1879867544",
                                                     subtitle: "2 de julio de 2018 a las 12:05 hs")
}

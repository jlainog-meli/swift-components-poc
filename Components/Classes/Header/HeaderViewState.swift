//
//  HeaderViewState.swift
//  Components
//
//  Created by Esteban Cardona Alvarez on 31/03/22.
//

import Foundation
struct HeaderModel: Codable {
    var id: String
    var title: String
    var avatar: String
}

public struct HeaderViewState {
    var id: String
    var title: String
    var avatar: String
    var action: () -> Void

    init(model: HeaderModel, action: @escaping () -> Void) {
        id = model.id
        title = model.title
        avatar = model.avatar
        self.action = action
    }
}

extension HeaderViewState {
    static let headerExample = HeaderViewState(model: HeaderModel(id: "header", title: "¡Pagaste a Strange Brewing!", avatar: "h"), action: {})
}

//
//  LoyaltyViewState.swift
//  Components
//
//  Created by Esteban Cardona Alvarez on 31/03/22.
//

import Foundation

struct LoyaltyModel: Codable {
    var id: String
    var title: String
    var linkText: String
    var progressLabel: String
    var progressValue: Float
}

struct LoyaltyViewState {
    var id: String
    var title: String
    var linkText: String
    var progressLabel: String
    var progressValue: Float
    var action: () -> Void
    
    init(model: LoyaltyModel, action: @escaping () -> Void) {
        id = model.id
        title = model.title
        linkText = model.linkText
        progressLabel = model.progressLabel
        progressValue = model.progressValue
        self.action = action
    }
}

extension LoyaltyViewState {
    static var loyaltyExample = LoyaltyViewState(model: LoyaltyModel(id: "loyalty", title: "Sumaste 20 Mercado Puntos", linkText: "Ver mis beneficios", progressLabel: "3", progressValue: 0.7), action: {})
}

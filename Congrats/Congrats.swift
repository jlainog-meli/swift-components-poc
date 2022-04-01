//
//  Congrats.swift
//  Components
//
//  Created by Esteban Cardona Alvarez on 1/04/22.
//

import SwiftUI

struct Congrats: View {
    let views: [Any]
    var body: some View {
        ScrollView {
            VStack {
                ForEach((0...views.count-1), id: \.self) { index in
                    let model = views[index]
                    if let model = model as? HeaderViewState {
                        HeaderView(model: model)
                    }
                    
                    if let model = model as? LoyaltyViewState {
                        Loyalty(model: model)
                    }
                    
                    if let model = model as? OperationViewState {
                        Operation(model: model)
                    }
                    
                    if let model = model as? DiscountViewState {
                        Discounts(model: model)
                    }
                }

                Spacer()
            }
        }.edgesIgnoringSafeArea([.all])
    }
}

struct Congrats_Previews: PreviewProvider {
    static var previews: some View {
        Congrats(views: [
            HeaderViewState.headerExample,
            LoyaltyViewState.loyaltyExample
        ])
    }
}

//
//  ButtonStack.swift
//  Components
//
//  Created by Esteban Cardona Alvarez on 29/03/22.
//

import SwiftUI

struct ButtonStack: View {
    private enum Constants {
        static let spacing: CGFloat = 8
        static let paddingEdges: Edge.Set = [.leading, .trailing]
        static let padding: CGFloat = 24
        
    }
    
    let primaryButton: ButtonViewState
    let secondaryButton: ButtonViewState

    var body: some View {
        VStack(spacing: Constants.spacing) {
            ButtonView(state: primaryButton)
            ButtonView(state: secondaryButton)
        }
        .padding(Constants.paddingEdges, Constants.padding)
    }
}

struct ButtonStack_Previews: PreviewProvider {
    static var previews: some View {
        ButtonStack(primaryButton: .primaryExample, secondaryButton: .secondaryExample)
    }
}

//
//  ButtonView.swift
//  Components
//
//  Created by Esteban Cardona Alvarez on 29/03/22.
//

import SwiftUI

struct ButtonView: View {
    private enum Constants {
        enum Text {
            static let fontWeight: Font.Weight = .semibold
            static let font: Font = .system(size: 16)
            static let padding: EdgeInsets = EdgeInsets(top: 17, leading: 24, bottom: 15, trailing: 24)
        }
        
        enum Button {
            static let cornerRadius: CGFloat = 6
            static let frameMaxWidth: CGFloat = .infinity
            static let frameMaxHeight: CGFloat = 48
            static let alignment: Alignment = .center
        }
    }
    
    let state: ButtonViewState
    var body: some View {
        Button(action: state.action) {
            Text(state.label)
                .fontWeight(Constants.Text.fontWeight)
                .font(Constants.Text.font)
                .padding(Constants.Text.padding)
        }
        .frame(
            maxWidth: Constants.Button.frameMaxWidth,
            maxHeight: Constants.Button.frameMaxHeight,
            alignment: Constants.Button.alignment
        )
        .background(state.type.backgroundColor)
        .foregroundColor(state.type.textColor)
        .cornerRadius(Constants.Button.cornerRadius)
        
    }
}

struct ButtonView_Previews: PreviewProvider {
    static var previews: some View {
        ButtonView(state: .primaryExample)
            .previewLayout(.sizeThatFits)
            .padding()
            .previewDisplayName("primaryExample")
        ButtonView(state: .secondaryExample)
            .previewLayout(.sizeThatFits)
            .padding()
            .previewDisplayName("secondaryExample")
        ButtonView(state: .transparentExample)
            .previewLayout(.sizeThatFits)
            .padding()
            .previewDisplayName("transparentExample")

    }
}

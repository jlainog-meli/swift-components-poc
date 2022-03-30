//
//  DiscountElement.swift
//  Components
//
//  Created by Esteban Cardona Alvarez on 29/03/22.
//

import SwiftUI

struct DiscountElement: View {
    private enum Constants {
        enum Circle {
            static let frameSize: CGFloat = 56
            static let foregroundColor: Color = .black.opacity(0.04)
            static let imageSize: CGFloat = 25
        }
        
        static let padding: CGFloat = 8
        static let priceFont: Font = .system(size: 20)
        static let titleFont: Font = .system(size: 12)
        static let fontWeight: Font.Weight = .bold
        static let fontColor: Color = .black
        static let spacing: CGFloat = 0
    }
    
    let model: DiscountViewState
    
    var body: some View {
        Button {
            model.action()
        } label: {
            VStack(spacing: Constants.spacing) {
                ZStack {
                    Circle()
                        .frame(width: Constants.Circle.frameSize, height: Constants.Circle.frameSize)
                        .foregroundColor(Constants.Circle.foregroundColor)
                    Image(model.icon)
                        .resizable()
                        .frame(width: Constants.Circle.frameSize, height: Constants.Circle.frameSize)
                        .scaledToFit()
                }
                .padding(.bottom, Constants.padding)
                Text(model.labelTitle)
                    .font(Constants.titleFont)
                    .foregroundColor(Constants.fontColor)
                Text(model.labelPrice)
                    .font(Constants.priceFont)
                    .fontWeight(Constants.fontWeight)
                    .foregroundColor(Constants.fontColor)
            }
        }
    }
}

struct DiscountElement_Previews: PreviewProvider {
    static var previews: some View {
        DiscountElement(model: .mcdonalds)
            .previewLayout(.sizeThatFits)
            .padding()
            .previewDisplayName("Discount_Element")
    }
}

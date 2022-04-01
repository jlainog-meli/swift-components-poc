//
//  Operation.swift
//  Components
//
//  Created by Esteban Cardona Alvarez on 30/03/22.
//

import SwiftUI

struct Operation: View {
    private enum Constants {
        enum Container {
            static let alignment: Alignment = .leading
            static let maxWidth: CGFloat = .infinity
        }
        enum Image {
            static let frameSize: CGFloat = 56
            static let leading: CGFloat = 32
        }
        
        enum Title {
            static let font: Font = .system(size: 16)
            static let fontWeight: Font.Weight = .semibold
        }
        
        enum Subtitle {
            static let font: Font = .system(size: 14)
            static let fontWeight: Font.Weight = .regular
            static let fontColor: Color = .black.opacity(0.45)
        }
        
        enum TitlesContainer {
            static let spacing: CGFloat = 2
            static let leading: CGFloat = 16
            static let trailing: CGFloat = 33
        }
    }
    
    let model: OperationViewState
    
    var body: some View {
        HStack {
            Image(model.icon, bundle: .assets)
                .resizable()
                .frame(width: Constants.Image.frameSize, height: Constants.Image.frameSize)
                .scaledToFit()
                .padding(.leading, Constants.Image.leading)
            VStack(alignment: .leading, spacing: Constants.TitlesContainer.spacing) {
                Text(model.title)
                    .font(Constants.Title.font)
                    .fontWeight(Constants.Title.fontWeight)
                Text(model.subtitle)
                    .font(Constants.Subtitle.font)
                    .fontWeight(Constants.Subtitle.fontWeight)
                    .foregroundColor(Constants.Subtitle.fontColor)
            }
            .padding(.leading, Constants.TitlesContainer.leading)
            .padding(.trailing, Constants.TitlesContainer.trailing)
        }.frame(
            maxWidth: Constants.Container.maxWidth,
            alignment: Constants.Container.alignment
        )
    }
}

struct Operation_Previews: PreviewProvider {
    static var previews: some View {
        Operation(model: .masterCardExample)
            .previewLayout(.sizeThatFits)
            .padding()
            .previewDisplayName("Operation")
        Operation(model: .operationExample)
            .previewLayout(.sizeThatFits)
            .padding()
            .previewDisplayName("Operation")

    }
}

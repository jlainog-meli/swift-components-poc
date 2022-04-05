//
//  HeaderViewState.swift
//  Components
//
//  Created by Esteban Cardona Alvarez on 31/03/22.
//

import SwiftUI

public struct HeaderView: View {
    private enum Constants {
        enum CloseButton {
            static let imageFrameSize: CGFloat = 9
            static let systemName = "xmark"
            static let leadingPadding: CGFloat = 34
            static let foregroundColor: Color = .black
            static let frameSize: CGFloat = 20
        }
        
        enum Title {
            static let font: Font = .system(size: 20)
            static let fontWeight: Font.Weight = .semibold
            static let leadingPadding: CGFloat = 32
            static let foregroundColor: Color = .white
        }
        
        enum Container {
            static let bottomPadding: CGFloat = 17
            static let topPadding: CGFloat = 23
            static let maxWidth: CGFloat = .infinity
            static let alignment: Alignment = .leading
            static let backgroundColor: Color = .green
        }
        
        enum Image {
            static let size: CGFloat = 48
            static let alignment: Alignment = .trailing
            static let trailingPadding: CGFloat = 32
        }
        
        enum Badge {
            static let systemName = "checkmark.circle.fill"
            static let size: CGFloat = 15
        }
    }
    
    let model: HeaderViewState
    
//    public init(model: HeaderViewState) {
//        self.model = model
//    }
//    
    public var body: some View {
        VStack(alignment: .leading) {
            Button(action: {
                
            }) {
                Image(systemName: Constants.CloseButton.systemName)
                    .resizable()
                    .frame(width: Constants.CloseButton.imageFrameSize, height: Constants.CloseButton.imageFrameSize)
            }
            .frame(width: Constants.CloseButton.frameSize, height: Constants.CloseButton.frameSize)
            .padding(.leading, Constants.CloseButton.leadingPadding)
            .foregroundColor(Constants.CloseButton.foregroundColor)
            
            HStack {
                Text(model.title)
                    .font(Constants.Title.font)
                    .fontWeight(Constants.Title.fontWeight)
                    .padding(.leading, Constants.Title.leadingPadding)
                    .foregroundColor(Constants.Title.foregroundColor)
                    .frame(
                        maxWidth: .infinity,
                        alignment: .leading
                    )
                ZStack {
                    Image(model.avatar, bundle: .assets)
                        .resizable()
                        .frame(
                            width: Constants.Image.size,
                            height: Constants.Image.size
                        )
                    Image(systemName: Constants.Badge.systemName)
                        .foregroundColor(.blue)
                        .offset(x: Constants.Badge.size, y: Constants.Badge.size)
                }
                .frame(alignment: Constants.Image.alignment)
                .padding(.trailing, Constants.Image.trailingPadding)
            }
        }
        .padding(.bottom, Constants.Container.bottomPadding)
        .padding(.top, Constants.Container.topPadding)
        .frame(
            maxWidth: Constants.Container.maxWidth,
            alignment: Constants.Container.alignment
        )
        .background(Constants.Container.backgroundColor)
    }
}

struct HeaderViewState_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView(model: .headerExample)
            .previewLayout(.sizeThatFits)
    }
}

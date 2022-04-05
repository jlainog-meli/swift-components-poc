//
//  Loyalty.swift
//  Components
//
//  Created by Esteban Cardona Alvarez on 31/03/22.
//

import SwiftUI

struct Loyalty: View {
    private enum Constants {
        enum Container {
            static let alignment: Alignment = .leading
            static let maxWidth: CGFloat = .infinity
        }
        enum Progress {
            static let frameSize: CGFloat = 44
            static let leading: CGFloat = 34
            static let color: Color = .blue
            static let font: Font = .system(size: 28)
            static let fontWeight: Font.Weight = .semibold
            static let progressLineWidth: CGFloat = 3
        }
        
        enum Title {
            static let font: Font = .system(size: 16)
            static let fontWeight: Font.Weight = .semibold
        }
        
        enum Subtitle {
            static let font: Font = .system(size: 14)
            static let fontWeight: Font.Weight = .semibold
            static let fontColor: Color = .blue
        }
        
        enum TitlesContainer {
            static let spacing: CGFloat = 2
            static let leading: CGFloat = 16
            static let trailing: CGFloat = 47
        }
    }
    
    let model: LoyaltyViewState
    var body: some View {
        HStack {
            ZStack {
                Group {
                    Text(model.progressLabel)
                        .font(Constants.Progress.font)
                        .fontWeight(Constants.Progress.fontWeight)
                    ProgressIndicator(progress: CGFloat(model.progressValue), color: Constants.Progress.color, lineWidth: Constants.Progress.progressLineWidth)
                }
                .frame(width: Constants.Progress.frameSize, height: Constants.Progress.frameSize)
                .foregroundColor(Constants.Progress.color)
            }.padding(.leading, Constants.Progress.leading)
            VStack(alignment: .leading, spacing: Constants.TitlesContainer.spacing) {
                Text(model.title)
                    .font(Constants.Title.font)
                    .fontWeight(Constants.Title.fontWeight)
                Button {
                    
                } label: {
                    Text(model.linkText)
                        .font(Constants.Subtitle.font)
                        .fontWeight(Constants.Subtitle.fontWeight)
                        .foregroundColor(Constants.Subtitle.fontColor)
                }
            }
            .frame(maxWidth: .infinity, alignment: .leading)
            .padding(.leading, Constants.TitlesContainer.leading)
            .padding(.trailing, Constants.TitlesContainer.trailing)
        }.frame(
            maxWidth: Constants.Container.maxWidth,
            alignment: Constants.Container.alignment
        )
    }}

struct Loyalty_Previews: PreviewProvider {
    static var previews: some View {
        Loyalty(model: .loyaltyExample)
            .previewLayout(.sizeThatFits)
    }
}

//
//  Discounts.swift
//  Components
//
//  Created by Esteban Cardona Alvarez on 29/03/22.
//

import SwiftUI

@available(iOS 14.0, *)
struct Discounts: View {
    
    private enum Constants {
        enum Title {
            static let font: Font = .system(size: 20)
            static let fontWeight: Font.Weight = .semibold
            static let edgeInsets: EdgeInsets = EdgeInsets(top: 15, leading: 32, bottom: 0, trailing: 32)
        }
        
        enum Subtitle {
            static let font: Font = .system(size: 14)
            static let fontWeight: Font.Weight = .thin
            static let edgeInsets: EdgeInsets = EdgeInsets(top: 8, leading: 32, bottom: 24, trailing: 32)
        }
        
        enum Grid {
            static let spacing: CGFloat = 40
            static let paddingEdges: Edge.Set = [.leading, .trailing]
            static let paddingValue: CGFloat = 56
        }
        
        enum Button {
            static let edgeInsets: EdgeInsets = EdgeInsets(top: 24, leading: 32, bottom: 23, trailing: 32)
        }
    }
    
    let model: DiscountSectionViewState
    private var gridItemLayout = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    fileprivate init(model: DiscountSectionViewState) {
        self.model = model
    }
    
    var body: some View {
        VStack(spacing: 0) {
            Text(model.title)
                .font(Constants.Title.font)
                .fontWeight(Constants.Title.fontWeight)
                .padding(Constants.Title.edgeInsets)
            Text(model.subtitle)
                .font(Constants.Subtitle.font)
                .fontWeight(Constants.Subtitle.fontWeight)
                .padding(Constants.Subtitle.edgeInsets)
            
            LazyVGrid(columns: gridItemLayout, spacing: Constants.Grid.spacing) {
                
                // Workaround to the Hashable requirements
                ForEach((0...model.discounts.count-1), id: \.self) { index in
                    DiscountElement(model: model.discounts[index])
                }
                
                // This requires Hashable implementation, check it later
                //                ForEach(model.discounts, id: \.self) { discount in
                //                    DiscountElement()
                //                }
            }
            .padding(Constants.Grid.paddingEdges, Constants.Grid.paddingValue)
            
            ButtonView(state: .secondaryExample)
                .padding(Constants.Button.edgeInsets)
        }
    }
}

struct Discounts_Previews: PreviewProvider {
    static var previews: some View {
        if #available(iOS 14.0, *) {
            Discounts(model: .example)
                .previewLayout(.sizeThatFits)
        } else {
            // Fallback on earlier versions
        }
    }
}

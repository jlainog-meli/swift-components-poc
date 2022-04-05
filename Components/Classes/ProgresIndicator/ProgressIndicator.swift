//
//  ProgressIndicator.swift
//  Components
//
//  Created by Esteban Cardona Alvarez on 31/03/22.
//

import SwiftUI

struct ProgressIndicator: View {
    let progress: CGFloat
    let color: Color
    let lineWidth: CGFloat
    
    var body: some View {
        Circle()
            .trim(from: 0, to: progress)
            .stroke(style: StrokeStyle(lineWidth: lineWidth, lineCap: .round))
            .rotationEffect(Angle(degrees: -90))
            .foregroundColor(color)
    }
}

struct ProgressIndicator_Previews: PreviewProvider {
    static var previews: some View {
        ProgressIndicator(progress: 0.6, color: .blue, lineWidth: 10)
            .previewLayout(.sizeThatFits)
    }
}

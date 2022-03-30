import SwiftUI

struct ColorPalette {
    static var primary: Color = .blue
    static var secondary: Color = .blue
    
    static var positive: Color = .blue
    static var caution: Color = .blue
    static var negative: Color = .blue
    
    static var primaryText: Color = .blue
    static var secondaryText: Color = .blue
    static var disableText: Color = .blue
    static var invertedText: Color = .white
}

private final class ModuleClass {}
extension Bundle {
    static let assets = Bundle(for: ModuleClass.self)
            .url(forResource: "Components", withExtension: "bundle")
            .flatMap(Bundle.init)
}

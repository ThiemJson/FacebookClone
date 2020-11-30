import SwiftUI
import UIKit

public struct UIColorPalettes{
    static let primaryColor = UIColor(rgb: 0x013679)
    static let primaryColorTint = UIColor(rgb: 0xe2f1fe)
    static let secondaryColor = UIColor(rgb: 0x026deb)
    static let textColor = UIColor(rgb: 0xcecece)
    
}

extension UIColor {
    convenience init(red: Int, green: Int, blue: Int) {
        assert(red >= 0 && red <= 255, "Invalid red component")
        assert(green >= 0 && green <= 255, "Invalid green component")
        assert(blue >= 0 && blue <= 255, "Invalid blue component")
        
        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }
    
    convenience init(rgb: Int) {
        self.init(
            red: (rgb >> 16) & 0xFF,
            green: (rgb >> 8) & 0xFF,
            blue: rgb & 0xFF
        )
    }
}

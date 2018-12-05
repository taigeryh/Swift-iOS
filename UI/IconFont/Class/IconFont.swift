//
//  IconFont.swift
//  IconFont
//
//  Created by taiyh on 2018/12/5.
//  Copyright © 2018 taiyh. All rights reserved.
//

import Foundation
import UIKit

public struct IconFontConfig {
    public static var name = "iconfont"
    public static var size: CGFloat = 16
}


public enum IconFont {
    case jishufuwu
    case kefu
    case xiazai
}

public extension IconFont {
    var unicode: String {
        switch self {
        case .jishufuwu:
            return "\u{0000ebce}"
        case .kefu:
            return "\u{0000ec2e}"
        default:
            return "\u{0000ebce}"
        }
    }
}

public extension IconFont {
    func font(size: CGFloat = IconFontConfig.size) -> UIFont? {
        return UIFont(name: IconFontConfig.name, size: size)
    }
}

public extension IconFont {
    
    func image(fontsize: CGFloat = IconFontConfig.size) -> UIImage? {
        return self.image(fontsize: fontsize, tintColor: nil)
    }
    
    func image(fontsize: CGFloat = IconFontConfig.size, tintColor: UIColor? = nil) -> UIImage? {
        
        guard let font = self.font(size: fontsize) else { return nil }
        let code = self.unicode as NSString
        let rect = code.boundingRect(with: .zero, options: .usesLineFragmentOrigin, attributes: [.font: font], context: nil)
        let label = UILabel(frame: CGRect(x: 0, y: 0, width: rect.size.width, height: rect.size.height))
        label.font = font
        label.textAlignment = .center
        label.text = self.unicode
        if let color = tintColor {
            label.textColor = color
        }
        UIGraphicsBeginImageContextWithOptions(rect.size, false, UIScreen.main.scale)
        label.layer.render(in: UIGraphicsGetCurrentContext()!)
        let image = UIGraphicsGetImageFromCurrentImageContext()
        return image
    }
}

public extension UIImageView {
    func iconfont(icon: IconFont, size: CGFloat = IconFontConfig.size) {
        self.image = icon.image(fontsize: size, tintColor: tintColor)
    }
}

public extension UILabel {
    
    func iconfont(icon: IconFont, size: CGFloat = IconFontConfig.size) {
        guard let font = icon.font(size: size) else { return }
        self.font = font
        self.text = icon.unicode
        // resizes and moves the receiver view so it just encloses its subviews
        // 调整并移动接收方视图，以便它只包含它的子视图
        self.sizeToFit()
    }
    
}

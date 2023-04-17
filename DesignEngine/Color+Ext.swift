//
//  Color+Ext.swift
//  DesignEngine
//
//  Created by Juan Diego Ocampo on 2023-04-17.
//

import UIKit
import SwiftUI

extension UIColor {
    
    static let brandPrimary = UIColor(named: "brandPrimary")!
    
}


extension Color {
 
    static var systemBackground: Color {
        let color = UIColor.systemBackground
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        color.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        return Color(red: red, green: green, blue: blue).opacity(alpha)
        
    }
    
    static var brandPrimary: Color {
        let color = UIColor.brandPrimary
        var red: CGFloat = 0
        var green: CGFloat = 0
        var blue: CGFloat = 0
        var alpha: CGFloat = 0
        color.getRed(&red, green: &green, blue: &blue, alpha: &alpha)
        return Color(red: red, green: green, blue: blue).opacity(alpha)
        
    }
    
}

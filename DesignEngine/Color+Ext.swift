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


extension Color {
    init(hex: String) {
        let scanner = Scanner(string: hex)
        var hexNumber: UInt64 = 0
        
        // Scan the hex string and convert it to a UInt64
        scanner.scanHexInt64(&hexNumber)
        
        // Extract the RGB values from the UInt64
        let red = Double((hexNumber & 0xff0000) >> 16) / 255.0
        let green = Double((hexNumber & 0x00ff00) >> 8) / 255.0
        let blue = Double(hexNumber & 0x0000ff) / 255.0
        
        // Create the SwiftUI Color object
        self.init(red: red, green: green, blue: blue)
    }
}

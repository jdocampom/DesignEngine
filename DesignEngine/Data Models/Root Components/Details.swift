//
//  Details.swift
//  InkUIBuilderKit
//
//  Created by Juan Diego Ocampo on 2023-03-17.
//

import Foundation

/// An object used to represent the middle section of the screen, including the child views and their layout properties.
@objcMembers final class Details: NSObject, Codable {
    
    /// An optional array of `Row` items, which contains all the buttons, text fields, labels or other user controls.
    let rows: [Row]?
    
    /// Returns a new instance of `Details`.
    /// - Parameter rows: An optional array of `Row` items, which contains all the buttons, text fields, labels or other user controls.
    init(rows: [Row]?) {
        self.rows = rows
    }
    
}

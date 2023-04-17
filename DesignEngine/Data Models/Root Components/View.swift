//
//  View.swift
//  InkUIBuilderKit
//
//  Created by Juan Diego Ocampo on 2023-03-17.
//

import Foundation

/// An object used to represent the view hierarchy of the screen that will be displayed.
@objcMembers final class InkUIBuilderKitView: NSObject, Codable, Identifiable {
    
    /// A `String` which is used to identify the current instance of `ITUIBuilderKit`. This value is often used as the title of the view.
    let id: String
    
    /// An object of type `Header`, which dictates how the top section of the screen should be drawn.
    let header: Header
    
    /// An object of type `Details`, which dictates how the middle section of the screen should be drawn.
    let details: Details
    
    /// An object of type `Footer`, which dictates how the bottom section of the screen should be drawn.
    //    let footer: Footer
    
    
    /// Returns a new instance of `InkUIBuilderKitView`.
    /// - Parameters:
    ///   - id: A `String` which is used to identify each instance of `ITUIBuilderKit`.
    ///   - header: An object of type `Header`, which dictates how the top section of the screen should be drawn.
    ///   - details: An object of type `Details`, which dictates how the middle section of the screen should be drawn.
    init(
        id: String,
        header: Header,
        details: Details
    ) {
        self.id = id
        self.header = header
        self.details = details
    }
    
}

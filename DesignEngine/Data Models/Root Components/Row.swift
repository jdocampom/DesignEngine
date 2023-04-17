//
//  Row.swift
//  InkUIBuilderKit
//
//  Created by Juan Diego Ocampo on 2023-03-17.
//

import Foundation

/// An object used to represent a single row of data in a table or list.
@objcMembers final class Row: NSObject, Identifiable, Codable {
    
    /// An `Int` literal used to uniquely identify instances of the `Row` type.
    let id: Int
    
    /// An array of `RowItem` object that represents the content that will populate the current `Row` instance.
    let fields: [RowItem]
    
    
    var firstRow: RowItem {
        guard let firstRow = fields.first else {
            fatalError("Did not find rows to decode")
        }
        return firstRow
    }
    
    /// Returns a new instance of `Row`.
    /// - Parameters:
    ///   - id: An `Int` literal used to uniquely identify each `Row` instance.
    ///   - fields: An array of `RowItem` object used to populate the `Row` object.
    init(
        id: Int,
        fields: [RowItem]
    ) {
        self.id = id
        self.fields = fields
    }
    
}

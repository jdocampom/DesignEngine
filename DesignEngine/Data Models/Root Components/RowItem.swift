//
//  RowItem.swift
//  InkUIBuilderKit
//
//  Created by Juan Diego Ocampo on 2023-03-17.
//

import Combine
import Foundation

@objcMembers final class RowItem: Codable {
    
    var id: String = ""
    var label: String
    var mandatory: Bool?
    var width: String?
    var contents: Content
    
    @objcMembers final class Content: ObservableObject, Codable {
        var type: String
        var placeholder: String
        var text: String
        
        init(type: String, placeholder: String, text: String) {
            self.type = type
            self.placeholder = placeholder
            self.text = text
        }
        
    }
    
    init(id: String, label: String, mandatory: Bool? = nil, width: String? = nil, contents: Content) {
        self.id = id
        self.label = label
        self.mandatory = mandatory
        self.width = width
        self.contents = contents
    }
    
}

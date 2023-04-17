//
//  JSONResponse.swift
//  DesignEngine
//
//  Created by Juan Diego Ocampo on 2023-03-17.
//

import Foundation

/// An object used to represent the JSON data sent from the server, which contains the instructions to build the user interface.
struct InkUIBuilderKitJSONResponse: Codable {
    
    /// An object of type `InkUIBuilderKitView`, which contains the view hierarchy to be drawn.
    let view: InkUIBuilderKitView
    
}


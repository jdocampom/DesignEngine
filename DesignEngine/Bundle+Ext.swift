//
//  Bundle+Ext.swift
//  DesignEngine
//
//  Created by Juan Diego Ocampo on 2023-04-21.
//

import Foundation

extension Bundle {
    
    /// Reads the contents of a file and decodes its JSON data to the specified Codable object of type `T`.
    /// - Parameter file: A `String` representing the name of the file to be decoded.
    /// - Returns: The decoded object of type `T`.
    func decodeJSON<T: Codable>(_ file: String) -> T {
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to create URL for \(file).")
        }
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        do {
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .useDefaultKeys
            decoder.dateDecodingStrategy = .iso8601
            return try decoder.decode(T.self, from: data)
        } catch let error {
            fatalError("Error: \(error.localizedDescription)")
        }
    }
    
}

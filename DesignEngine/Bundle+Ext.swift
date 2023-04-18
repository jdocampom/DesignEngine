//
//  Bundle+Ext.swift
//  DesignEngine
//
//  Created by Juan Diego Ocampo on 2023-03-09.
//

import Foundation

extension Bundle {
    func decode<T: Codable>(_ file: String) -> T {
        
        guard let url = self.url(forResource: file, withExtension: nil) else {
            fatalError("Failed to locate \(file) in bundle.")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load \(file) from bundle.")
        }
        
        do {
            
            let decoder = JSONDecoder()
            decoder.keyDecodingStrategy = .useDefaultKeys
            
            let loaded = try decoder.decode(T.self, from: data)
            return loaded
        } catch let error {
            fatalError("Error: \(error.localizedDescription)")
        }
        
        

        
//        let decoder = JSONDecoder()
//        decoder.keyDecodingStrategy = .useDefaultKeys
//        //        let formatter = DateFormatter()
        
        //        formatter.dateFormat = "y-MM-dd"
        //        decoder.dateDecodingStrategy = .formatted(formatter)
        
//        guard let loaded = try? decoder.decode(T.self, from: data) else {
//            fatalError("Failed to decode \(file) from bundle.")
//        }
        
//        return loaded
    }
}

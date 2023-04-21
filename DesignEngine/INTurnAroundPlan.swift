//
//  IATurnAroundPlan.swift
//  DesignEngine
//
//  Created by Juan Diego Ocampo on 2023-04-21.
//

import InkTouchHelpers
import Foundation

public final class INTurnAroundPlan: Codable {
    
    public var title: String
    public var placeholderText: String
    public var tintColor: String
    public var events: [INTurnAroundPlan.INTurnAroundEvent]
    
    /// Defines the key names used when encoding and decoding the struct.
    enum CodingKeys: String, CodingKey {
        case title = "title"
        case placeholderText = "placeholderText"
        case tintColor = "tintColor"
        case events = "events"
    }
    
    public init(
        title: String? = nil,
        placeholderText: String? = nil,
        tintColor: String? = nil,
        events: [INTurnAroundPlan.INTurnAroundEvent]? = nil
    ) {
        self.title = title ?? .empty
        self.placeholderText = placeholderText ?? .empty
        self.tintColor = tintColor ?? "6E31D9"
        self.events = events ?? []
    }
    
}

extension INTurnAroundPlan {
    
    public final class INTurnAroundEvent: Codable, Identifiable, ObservableObject {
        
        public var id: Int
        public var title: String
        public var subtitle: String
        public var lastModified: Date? = nil
        public var submissionDate: Date? = nil {
            didSet(newValue) {
                if let date = newValue {
                    print("")
                    print(date)
                    print("")
                } else {
                    print("")
                    print("newValue is nil")
                    print("")
                }
            }
        }
        public var isFinished: Bool = false
        public var hasBoolInput: Bool
        public var hasDateInput: Bool
        
        /// Defines the key names used when encoding and decoding the struct.
        enum CodingKeys: String, CodingKey {
            case id = "id"
            case title = "title"
            case subtitle = "subtitle"
            case lastModified = "lastModified"
            case submissionDate = "submissionDate"
            case isFinished = "isFinished"
            case hasBoolInput = "hasBoolInput"
            case hasDateInput = "hasDateInput"
        }
        
        public init(
            id: Int? = nil,
            title: String? = nil,
            subtitle: String? = nil,
            lastModified: Date? = nil,
            submissionDate: Date? = nil,
            isFinished: Bool? = nil,
            hasBoolInput: Bool? = nil,
            hasDateInput: Bool? = nil
        ) {
            self.id = id ?? .zero
            self.title = title ?? .empty
            self.subtitle = subtitle ?? .empty
            self.lastModified = lastModified
            self.submissionDate = submissionDate
            self.isFinished = isFinished ?? false
            self.hasBoolInput = hasBoolInput ?? false
            self.hasDateInput = hasDateInput ?? false
        }
        
    }
    
}

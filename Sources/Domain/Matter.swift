//
//  Matter.swift
//  Blessing
//
//  Created by alex.huo on 2022/8/13.
//

import Foundation

/// A model that represents a matter.
public struct Matter: Codable, Identifiable {
    /// The matter’s unique identifier.
    public var id: String

    /// The title for the matter.
    public var title: String

    /// The tag for the matter.
    public var tag: Tagble

    /// The original occurrence date of the matter.
    public var occurrenceDate: Date

    /// The notes associated with the matter.
    public var notes: String?

    /// This will be removed after Swift 5.
    public init(
        id: String,
        title: String = "",
        tag: Tagble = Tagble.random(),
        occurrenceDate: Date = Date(),
        notes: String? = nil
    ) {
        self.id = id
        self.title = title
        self.tag = tag
        self.occurrenceDate = occurrenceDate
        self.notes = notes
    }
}

public extension Matter {
    enum Kind: Int {
        case past
        case upcoming
    }
}

extension Matter: Hashable {}

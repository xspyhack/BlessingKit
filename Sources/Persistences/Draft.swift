//
//  Draft.swift
//  Cerise
//
//  Created by bl4ckra1sond3tre on 2019/7/14.
//  Copyright © 2019 blessingsoftware. All rights reserved.
//

import Foundation

public struct Draft {
    public static let charmander: Charmander = Charmander(directory: .caches)
    static let key: String = "matter.draft"

    public enum Action {
        case delete
        case save
    }

    public static func store<Object: Encodable>(_ object: Object,
                                         encoder: JSONEncoder = JSONEncoder()) throws {
        try charmander.store(object, forKey: key)
    }

    public static func retrieve<Object: Decodable>(_ type: Object.Type,
                                            decoder: JSONDecoder = JSONDecoder()) throws -> Object {
        return try charmander.retrieve(forKey: key, type: type)
    }

    public static func remove() throws {
        try charmander.remove(forKey: key)
    }

    public static func clear() throws {
        try charmander.clear()
    }
}

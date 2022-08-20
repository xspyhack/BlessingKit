//
//  Bless.swift
//  Bless
//
//  Created by bl4ckra1sond3tre on 2019/3/2.
//  Copyright © 2019 blessingsoftware. All rights reserved.
//

import Foundation

public final class Bless<Base> {
    public let base: Base
    public init(_ base: Base) {
        self.base = base
    }
}

public protocol BlessCompatible {
    associatedtype BaseType

    var bless: Bless<BaseType> { get }
    static var bless: Bless<BaseType>.Type { get }
}

public extension BlessCompatible {
    var bless: Bless<Self> {
        return Bless(self)
    }

    static var bless: Bless<Self>.Type {
        return Bless<Self>.self
    }
}

extension NSObject: BlessCompatible {}

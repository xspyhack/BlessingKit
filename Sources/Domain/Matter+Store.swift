//
//  Matter+ID.swift
//  Cherry
//
//  Created by alex.huo on 2022/8/14.
//

import Foundation

extension Matter: StoreKey {
  public var storeKey: String {
        return id.replacingOccurrences(of: "-", with: "").lowercased()
    }
}

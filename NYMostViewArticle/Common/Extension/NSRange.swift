//
//  NSRange.swift
//  WakeApp
//
//  Created by Artur Jaworski on 15.04.2016.
//  Copyright © 2016 Nomtek. All rights reserved.
//

import Foundation

extension NSRange {
    init(fromRange range: Range<String.Index>, ofString string: String) {
        let start = string.distance(from: string.startIndex, to: range.lowerBound)
        let length = string.distance(from: range.lowerBound, to: range.upperBound)

        self.init(location: start, length: length)
    }
}

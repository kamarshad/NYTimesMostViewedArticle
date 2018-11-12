//
//  NSLayoutConstraint.swift
//  NYMostViewArticle
//
//  Created by Mohd Kamar on 12/11/18.
//  Copyright © 2018 learning. All rights reserved.
//


import Foundation
import UIKit

extension NSLayoutConstraint {
    convenience init(byConstraint constraint: NSLayoutConstraint, multiplier: CGFloat) {
        self.init(
            item: constraint.firstItem as Any,
            attribute: constraint.firstAttribute,
            relatedBy: constraint.relation,
            toItem: constraint.secondItem,
            attribute: constraint.secondAttribute,
            multiplier: multiplier,
            constant: constraint.constant
        )

        self.priority = constraint.priority
        self.shouldBeArchived = constraint.shouldBeArchived
        self.identifier = constraint.identifier
    }

    convenience init(item: AnyObject, attribute: NSLayoutAttribute, constant: CGFloat) {
        self.init(
            item: item,
            attribute: attribute,
            relatedBy: .equal,
            toItem: nil,
            attribute: .notAnAttribute,
            multiplier: 1,
            constant: constant
        )
    }
}

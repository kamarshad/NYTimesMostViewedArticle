//
//  NSLayoutConstraintHairline.swift
//  NYMostViewArticle
//
//  Created by Mohd Kamar on 12/11/18.
//  Copyright © 2018 learning. All rights reserved.
//


import UIKit

class NSLayoutConstraintHairline: NSLayoutConstraint {
    internal class func width() -> CGFloat {
        return 1 / UIScreen.main.scale
    }

    internal class func borderWidth() -> CGFloat {
        return 1.0
    }

    override func awakeFromNib() {
        super.awakeFromNib()

        if self.constant == 1 {
            self.constant = NSLayoutConstraintHairline.width()
        }
    }
}

//
//  NSMutableAttributedString+Occurrences.swift
//  NYMostViewArticle
//
//  Created by Mohd Kamar on 12/11/18.
//  Copyright © 2018 learning. All rights reserved.
//


import Foundation
import UIKit

extension NSMutableAttributedString {
    
    func addAttributes(_ attributes: [NSAttributedStringKey: AnyObject]) {
        self.addAttributes(attributes, range: NSRange(location: 0, length: self.length))
    }
    
    func addAttributesBetweenOccurrencesOf(_ string: String, attributes: [NSAttributedStringKey: AnyObject]) {
        let originalString = self.string
        let replaceRanges = originalString.rangesBetweenOccurrencesOf(string)
        for range in replaceRanges {
            self.addAttributes(attributes, range: NSRange(fromRange: range, ofString: originalString))
        }
        let marksRanges = self.string.rangesOfOccurrencesOf(string).reversed()
        for range in marksRanges {
            self.replaceCharacters(in: NSRange(fromRange: range, ofString: originalString), with: "")
        }
    }
}

//
//  String.swift
//  NYMostViewArticle
//
//  Created by Mohd Kamar on 12/11/18.
//  Copyright © 2018 learning. All rights reserved.
//


import Foundation

extension String {
    
    func rangesBetweenOccurrencesOf(_ string: String) -> [Range<Index>] {
        let ranges = self.rangesOfOccurrencesOf(string)
        var newRanges = [Range<Index>]()
        for index in stride(from: 0, to: ranges.count - 1, by: 2) {
            let startRange = ranges[index]
            let endRange = ranges[index + 1]
            
            let range = startRange.lowerBound..<endRange.upperBound
            newRanges.append(range)
        }
        
        return newRanges
    }
    
    func rangesOfOccurrencesOf(_ string: String) -> [Range<Index>] {
        var range = self.range(of: self)
        var ranges = [Range<Index>]()
        while true {
            let tmpRange = self.range(of: string, options: [], range: range)
            guard let foundRange = tmpRange else {
                break
            }
            
            ranges.append(foundRange)
            range = foundRange.upperBound..<self.endIndex
        }
        
        return ranges
    }

}

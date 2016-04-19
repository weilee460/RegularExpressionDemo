//
//  RegulatExpressionToolClass.swift
//  RegularExpressionDemo
//
//  Created by ying on 16/4/19.
//  Copyright © 2016年 ying. All rights reserved.
//

import Foundation

class RegularExpressionTool {
    
    let regex: NSRegularExpression?
    
    init(_ pattern: String)
    {
        regex = try? NSRegularExpression(pattern: pattern, options: .CaseInsensitive)
    }
    
    func match(input: String) -> Bool {
        if let matches = regex?.matchesInString(input, options: [], range: NSMakeRange(0, (input as NSString).length)) {
            return matches.count > 0
        }
        else
        {
            return false
        }
    }
    
}
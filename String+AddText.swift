//
//  String+AddText.swift
//  MyLocation
//
//  Created by Bing Tian on 6/14/19.
//  Copyright © 2019 tianbing. All rights reserved.
//

extension String{
    mutating func add(text: String?, separatedBy separator: String = "") {
        if let text = text{
            if !isEmpty{
                self += separator
            }
            self += text
        }
    }
}

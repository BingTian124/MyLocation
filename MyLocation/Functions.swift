//
//  Functions.swift
//  MyLocation
//
//  Created by Bing Tian on 2/16/19.
//  Copyright © 2019 tianbing. All rights reserved.
//

import Foundation

func afterDelay(_ seconds: Double, run: @escaping() -> Void){
    DispatchQueue.main.asyncAfter(deadline: .now() + seconds, execute: run)
}

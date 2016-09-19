//
//  Box.swift
//  Kingfisher
//
//  Created by WANG WEI on 2016/09/12.
//  Copyright © 2016年 Wei Wang. All rights reserved.
//

import Foundation

@available(OSX 10.10, *)
class Box<T> {
    let value: T
    init(value: T) {
        self.value = value
    }
}

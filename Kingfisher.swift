//
//  Kingfisher.swift
//  Kingfisher
//
//  Created by WANG WEI on 2016/09/14.
//  Copyright © 2016年 Wei Wang. All rights reserved.
//

import Foundation
import ImageIO

#if os(macOS)
    import AppKit
    @available(OSX 10.10, *)
    public typealias Image = NSImage
    @available(OSX 10.10, *)
    public typealias Color = NSColor
    @available(OSX 10.10, *)
    public typealias ImageView = NSImageView
    @available(OSX 10.10, *)
    typealias Button = NSButton
#else
    import UIKit
    public typealias Image = UIImage
    public typealias Color = UIColor
    #if !os(watchOS)
    public typealias ImageView = UIImageView
    typealias Button = UIButton
    #endif
#endif

public struct Kingfisher<Base> {
    public let base: Base
    public init(_ base: Base) {
        self.base = base
    }
}

/**
 A type that has Kingfisher extensions.
 */
@available(OSX 10.10, *)
public protocol KingfisherCompatible {
    associatedtype CompatibleType
    var kf: CompatibleType { get }
}
@available(OSX 10.10, *)
public extension KingfisherCompatible {
    public var kf: Kingfisher<Self> {
        get { return Kingfisher(self) }
        set { }
    }
}

@available(OSX 10.10, *)
extension Image: KingfisherCompatible { }
#if !os(watchOS)
    @available(OSX 10.10, *)
extension ImageView: KingfisherCompatible { }
    @available(OSX 10.10, *)
extension Button: KingfisherCompatible { }
#endif

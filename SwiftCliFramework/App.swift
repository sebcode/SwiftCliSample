//
//  App.swift
//  SwiftCliSample
//
//  Created by Sebastian Volland on 08/07/16.
//  Copyright © 2016 sv. All rights reserved.
//

import Foundation

@objc
public class App: NSObject {

    var arguments: [String] = []

    public init(arguments: [String]) {
        self.arguments = arguments
    }

    public class func run(arguments: [String]) {
        let app = App(arguments: arguments)
        let ret = app.process()
        exit(Int32(ret))
    }

    public func process() -> Int {
        NSLog("App called with arguments: \(arguments)")

        return 1
    }

}

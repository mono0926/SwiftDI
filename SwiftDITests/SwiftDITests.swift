//
//  SwiftDITests.swift
//  SwiftDITests
//
//  Created by mono on 6/16/14.
//  Copyright (c) 2014 mono. All rights reserved.
//

import XCTest
import SwiftDI

class SwiftDITests: XCTestCase {    
    var target: IContainer?
    override func setUp() {
        super.setUp()
        target = Container()
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        target!.register { "AAA" }
        let result: String? = target?.resolve()?
        XCTAssertEqualObjects(result, "AAA")
    }
    
}

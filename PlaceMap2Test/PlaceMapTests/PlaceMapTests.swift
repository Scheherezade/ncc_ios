//
//  PlaceMapTests.swift
//  PlaceMapTests
//
//  Created by shunsukeshimada on 2015/12/12.
//  Copyright © 2015年 shunsukeshimada. All rights reserved.
//

import XCTest
@testable import PlaceMap

class PlaceMapTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock {
            // Put the code you want to measure the time of here.
        }
    }
    func testPlaceArrayCheck() {
        let pdb = PlaceDatabase()
        
        XCTAssertEqual(pdb.places.count, 47)
        
        let anElement = pdb.places[46];
        XCTAssertEqual(anElement["pref"], "沖縄県")
        XCTAssertEqual(anElement["name"], "那覇市")
    }
    func testGetCapitalCity() {
        let pdb = PlaceDatabase()
        XCTAssertEqual(pdb.getCapitalCity("北海道"), "札幌市")
        XCTAssertNil(pdb.getCapitalCity("ほげほげ"))
    }
    
}

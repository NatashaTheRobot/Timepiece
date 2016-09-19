//
//  NSCalendarUnit+TimepieceTests.swift
//  Timepiece
//
//  Created by Mattijs on 13/05/15.
//  Copyright (c) 2015 Naoto Kaneko. All rights reserved.
//

import Timepiece
import XCTest

class NSCalendarUnitTestCase: XCTestCase {
    func testCalendarUnitIntervals() {
        // some sanity checks
        XCTAssertLessThan(NSCalendar.Unit.nanosecond.interval, 1, "")
        XCTAssertEqual(NSCalendar.Unit.second.interval, 1)
        XCTAssertEqual(NSCalendar.Unit.minute.interval, 60)
        XCTAssertEqual(NSCalendar.Unit.hour.interval, 3600)
        XCTAssertEqual(NSCalendar.Unit.day.interval, 24 * 3600)
        XCTAssertEqual(NSCalendar.Unit.weekOfYear.interval, 7 * 24 * 3600)
        XCTAssertEqual(NSCalendar.Unit.month.interval, 30*86400, "")
        XCTAssertEqual(NSCalendar.Unit.quarter.interval, 146097/400/4*86400, "")
        XCTAssertEqual(NSCalendar.Unit.year.interval, 146097/400*86400, "")
        
        // some unsupported calendar units should return 0 as interval
        XCTAssert(NSCalendar.Unit.era.interval == 0)
        XCTAssert(NSCalendar.Unit.calendar.interval == 0)
        XCTAssert(NSCalendar.Unit.timeZone.interval == 0)
    }
}

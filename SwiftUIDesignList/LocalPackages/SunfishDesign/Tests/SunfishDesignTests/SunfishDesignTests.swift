import XCTest
import SwiftUI
@testable import SunfishDesign

final class SunfishDesignTests: XCTestCase {
    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct
        // results.
        XCTAssertEqual(SunfishDesign().text, "Hello, World!")
    }

    // test that all colors from the Assets file can be found and
    // create non-nil Colors
    func testSunfishColorsFromBundle() {
        for sunfishColor in SunfishColor.allCases {
            let color = Color(sunfishColor)
            XCTAssertNotNil(color)
        }
    }
}

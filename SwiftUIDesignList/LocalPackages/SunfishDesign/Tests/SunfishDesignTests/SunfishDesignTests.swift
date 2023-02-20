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

    func testSunfishColorFromBundle() {
        let color = Color(SunfishColor.brown)
        XCTAssertNotNil(color)
    }
}

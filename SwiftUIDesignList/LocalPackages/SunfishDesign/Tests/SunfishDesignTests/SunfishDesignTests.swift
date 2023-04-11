import XCTest
import SwiftUI
@testable import SunfishDesign

final class SunfishDesignTests: XCTestCase {
    // test that all colors from the Assets file can be found and
    // create non-nil Colors
    func testSunfishColorsFromBundle() {
        for sunfishColor in SunfishColor.allCases {
            let color = Color(sunfishColor)
            XCTAssertNotNil(color)
        }
    }
}

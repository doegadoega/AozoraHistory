import XCTest
@testable import AozoraHistory

final class AozoraHistoryTests: XCTestCase {
    func testModels() throws {
        let typography = HistoricalTypography(
            id: "test",
            name: "五号明朝",
            foundryName: "東京築地活版製造所",
            period: "taisho",
            pointSize: 10.5,
            characteristics: "test",
            modernFontEquivalent: "Oradano"
        )
        XCTAssertEqual(typography.name, "五号明朝")
    }
}

import XCTest
@testable import SwiftCodingChallenge

class ReverseTests: XCTestCase {
    var codingChallenge: SwiftCodingChallenge!
    
    override func setUp() {
        super.setUp()
        codingChallenge = SwiftCodingChallenge()
    }
    
    func testEmptyString() {
        let actual = codingChallenge.reverse("")
        XCTAssertEqual("", actual)
    }
    
    func testSingleCharString() {
        let testStr = "a"
        let actual = codingChallenge.reverse(testStr)
        XCTAssertEqual(testStr, actual)
    }
    
    func testSimpleString() {
        let testStr = "abc"
        let actual = codingChallenge.reverse(testStr)
        let expected = "cba"
        XCTAssertEqual(expected, actual)
    }
    
    func testLongString() {
        let testStr = "A quantum computer is a computer that exploits quantum mechanical phenomena"
        let actual = codingChallenge.reverse(testStr)
        let expected = "anemonehp lacinahcem mutnauq stiolpxe taht retupmoc a si retupmoc mutnauq A"
        XCTAssertEqual(expected, actual)
    }
}

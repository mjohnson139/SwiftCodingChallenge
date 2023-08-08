@testable import SwiftCodingChallenge
import XCTest

class FizzBuzzTests: XCTestCase {
    var codingChallenge: SwiftCodingChallenge!

    override func setUp() {
        super.setUp()
        codingChallenge = SwiftCodingChallenge()
    }

    func testSpecificNumbers() {
        let fizz = "Fizz"
        let buzz = "Buzz"
        let fizzBuzz = fizz + buzz

        let result = codingChallenge.fizzBuzz()
        XCTAssertNotNil(result)
        XCTAssertEqual(result[3], fizz)
        XCTAssertEqual(result[5], buzz)
        XCTAssertEqual(result[9], fizz)
        XCTAssertEqual(result[10], buzz)
        XCTAssertEqual(result[15], fizzBuzz)
        XCTAssertEqual(result[30], fizzBuzz)
    }

    func testAllFizzBuzzNumbers() {
        let fizzNumbers = [3, 6, 9, 12, 18, 21, 24, 27, 33, 36, 39, 42, 48, 51, 54, 57, 63, 66, 69, 72, 78, 81, 84, 87, 93, 96, 99]
        let buzzNumbers = [5, 10, 20, 25, 35, 40, 50, 55, 65, 70, 80, 85, 95, 100]
        let fizzBuzzNumbers = [15, 30, 45, 60, 75, 90]

        let actual = codingChallenge.fizzBuzz()

        for n in fizzNumbers {
            XCTAssertEqual(actual[n], "Fizz", "Error for number \(n)")
        }

        for n in buzzNumbers {
            XCTAssertEqual(actual[n], "Buzz", "Error for number \(n)")
        }

        for n in fizzBuzzNumbers {
            XCTAssertEqual(actual[n], "FizzBuzz", "Error for number \(n)")
        }

        // Check that the remaining numbers are empty strings in the result
        let remainingNumbers = Set(1 ... 100).subtracting(fizzNumbers + buzzNumbers + fizzBuzzNumbers)
        for n in remainingNumbers {
            XCTAssertEqual(actual[n], "", "Error for number \(n)")
        }
    }
}

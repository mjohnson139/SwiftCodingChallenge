import XCTest
@testable import SwiftCodingChallenge

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
    
    func testGeneralNumbers() {
        let fizzNumbers = [3, 6, 9, 12, 18, 21, 24, 27, 33, 36, 39, 42, 48, 51, 54, 57, 63, 66, 69, 72, 78, 81, 84, 87, 93, 99]
        let buzzNumbers = [5, 10, 20, 25, 35, 40, 50, 55, 65, 70, 80, 85, 95]
        let fizzBuzzNumbers = [15, 30, 45, 60, 75, 90]
        
        var remainingNumbers = [Int]()
        for i in 1...100 {
            if !fizzNumbers.contains(i) && !buzzNumbers.contains(i) && !fizzBuzzNumbers.contains(i) {
                remainingNumbers.append(i)
            }
        }
        
        let actual = codingChallenge.fizzBuzz()
        for n in fizzNumbers {
            XCTAssertEqual(actual[n], "Fizz")
        }
        
        for n in buzzNumbers {
            XCTAssertEqual(actual[n], "Buzz")
        }
        
        for n in fizzBuzzNumbers {
            XCTAssertEqual(actual[n], "FizzBuzz")
        }
        
        for n in remainingNumbers {
            XCTAssertEqual(actual[n], "")
        }
    }
}

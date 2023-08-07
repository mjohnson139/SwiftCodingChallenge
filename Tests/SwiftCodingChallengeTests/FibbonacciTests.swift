import XCTest
@testable import SwiftCodingChallenge

class FibbonacciTests: XCTestCase {
    var codingChallenge: SwiftCodingChallenge!
    
    override func setUp() {
        super.setUp()
        codingChallenge = SwiftCodingChallenge()
    }
    
    func testNegativeInput() {
        let input = -1
        let expected = "Cannot accept negative numbers"
        
        do {
            let _ = try codingChallenge.fibonacci(input)
            XCTFail("Should not pass here")
        } catch let error as SwiftCodingChallenge.FibonacciError {
            XCTAssertEqual(error.localizedDescription, expected)
        } catch {
            XCTFail("Unexpected error")
        }
    }
    
    func testZeroInput() {
        let input = 0
        let expected = 0
        
        do {
            let actual = try codingChallenge.fibonacci(input)
            XCTAssertEqual(expected, actual)
        } catch {
            XCTFail("Unexpected error occurred")
        }
    }
    
    func testFirstElement() {
        let input = 1
        let expected = 1
        
        do {
            let actual = try codingChallenge.fibonacci(input)
            XCTAssertEqual(expected, actual)
        } catch {
            XCTFail("Unexpected error occurred")
        }
    }
    
    func testSecondElement() {
        let input = 2
        let expected = 1
        
        do {
            let actual = try codingChallenge.fibonacci(input)
            XCTAssertEqual(expected, actual)
        } catch {
            XCTFail("Unexpected error occurred")
        }
    }
    
    func testThirdElement() {
        let input = 3
        let expected = 2
        
        do {
            let actual = try codingChallenge.fibonacci(input)
            XCTAssertEqual(expected, actual)
        } catch {
            XCTFail("Unexpected error occurred")
        }
    }
    
    func testFifteenthElement() {
        let input = 15
        let expected = 610
        
        do {
            let actual = try codingChallenge.fibonacci(input)
            XCTAssertEqual(expected, actual)
        } catch {
            XCTFail("Unexpected error occurred")
        }
    }
    
    func testFortyFifthElement() {
        let input = 45
        let expected = 1134903170
        
        do {
            let actual = try codingChallenge.fibonacci(input)
            XCTAssertEqual(expected, actual)
        } catch {
            XCTFail("Unexpected error occurred")
        }
    }
}

import XCTest
@testable import SwiftCodingChallenge

final class RomanNumeralsTests: XCTestCase {
    var codingChallenge: SwiftCodingChallenge!
    
    override func setUp() {
        super.setUp()
        codingChallenge = SwiftCodingChallenge()
    }
    
    func testNegativeNumber() {
        do {
            let _ = try codingChallenge.convertArabicToRomanNumerals(-5)
            XCTFail("Should not pass here")
        } catch let error as NSError {
            XCTAssertEqual(error.localizedDescription, "Number outside of range.")
        }
    }
    
    func testZero() {
        do {
            let _ = try codingChallenge.convertArabicToRomanNumerals(0)
            XCTFail("Should not pass here")
        } catch let error as NSError {
            XCTAssertEqual(error.localizedDescription, "Number outside of range.")
        }
    }
    
    func testLowerBound() {
        do {
            let actual = try codingChallenge.convertArabicToRomanNumerals(1)
            let expected = "I"
            XCTAssertEqual(expected, actual)
        } catch {
            XCTFail("Unexpected error: \(error)")
        }
    }
    
    func testUpperBound() {
        do {
            let actual = try codingChallenge.convertArabicToRomanNumerals(3999)
            let expected = "MMMCMXCIX"
            XCTAssertEqual(expected, actual)
        } catch {
            XCTFail("Unexpected error: \(error)")
        }
    }
    
    func testOverUpperBound() {
        do {
            let _ = try codingChallenge.convertArabicToRomanNumerals(4000)
            XCTFail("Should not pass here")
        } catch let error as NSError {
            XCTAssertEqual(error.localizedDescription, "Number outside of range.")
        }
    }
    
    func test2() {
        do {
            let actual = try codingChallenge.convertArabicToRomanNumerals(2)
            let expected = "II"
            XCTAssertEqual(expected, actual)
        } catch {
            XCTFail("Unexpected error: \(error)")
        }
    }
    
    func test3() {
        do {
            let actual = try codingChallenge.convertArabicToRomanNumerals(3)
            let expected = "III"
            XCTAssertEqual(expected, actual)
        } catch {
            XCTFail("Unexpected error: \(error)")
        }
    }
    
    func test4() {
        do {
            let actual = try codingChallenge.convertArabicToRomanNumerals(4)
            let expected = "IV"
            XCTAssertEqual(expected, actual)
        } catch {
            XCTFail("Unexpected error: \(error)")
        }
    }
    
    func test5() {
        do {
            let actual = try codingChallenge.convertArabicToRomanNumerals(5)
            let expected = "V"
            XCTAssertEqual(expected, actual)
        } catch {
            XCTFail("Unexpected error: \(error)")
        }
    }
    
    func test6() {
        do {
            let actual = try codingChallenge.convertArabicToRomanNumerals(6)
            let expected = "VI"
            XCTAssertEqual(expected, actual)
        } catch {
            XCTFail("Unexpected error: \(error)")
        }
    }
    
    func test7() {
        do {
            let actual = try codingChallenge.convertArabicToRomanNumerals(7)
            let expected = "VII"
            XCTAssertEqual(expected, actual)
        } catch {
            XCTFail("Unexpected error: \(error)")
        }
    }
    
    func test8() {
        do {
            let actual = try codingChallenge.convertArabicToRomanNumerals(8)
            let expected = "VIII"
            XCTAssertEqual(expected, actual)
        } catch {
            XCTFail("Unexpected error: \(error)")
        }
    }
    
    func test9() {
        do {
            let actual = try codingChallenge.convertArabicToRomanNumerals(9)
            let expected = "IX"
            XCTAssertEqual(expected, actual)
        } catch {
            XCTFail("Unexpected error: \(error)")
        }
    }
    
    func test10() {
        do {
            let actual = try codingChallenge.convertArabicToRomanNumerals(10)
            let expected = "X"
            XCTAssertEqual(expected, actual)
        } catch {
            XCTFail("Unexpected error: \(error)")
        }
    }
    
    func test11() {
        do {
            let actual = try codingChallenge.convertArabicToRomanNumerals(11)
            let expected = "XI"
            XCTAssertEqual(expected, actual)
        } catch {
            XCTFail("Unexpected error: \(error)")
        }
    }
    
    func test30() {
        do {
            let actual = try codingChallenge.convertArabicToRomanNumerals(30)
            let expected = "XXX"
            XCTAssertEqual(expected, actual)
        } catch {
            XCTFail("Unexpected error: \(error)")
        }
    }
    
    func test40() {
        do {
            let actual = try codingChallenge.convertArabicToRomanNumerals(40)
            let expected = "XL"
            XCTAssertEqual(expected, actual)
        } catch {
            XCTFail("Unexpected error: \(error)")
        }
    }
    
    func test50() {
        do {
            let actual = try codingChallenge.convertArabicToRomanNumerals(50)
            let expected = "L"
            XCTAssertEqual(expected, actual)
        } catch {
            XCTFail("Unexpected error: \(error)")
        }
    }
    
    func test60() {
        do {
            let actual = try codingChallenge.convertArabicToRomanNumerals(60)
            let expected = "LX"
            XCTAssertEqual(expected, actual)
        } catch {
            XCTFail("Unexpected error: \(error)")
        }
    }
    
    func test80() {
        do {
            let actual = try codingChallenge.convertArabicToRomanNumerals(80)
            let expected = "LXXX"
            XCTAssertEqual(expected, actual)
        } catch {
            XCTFail("Unexpected error: \(error)")
        }
    }
    
    func test90() {
        do {
            let actual = try codingChallenge.convertArabicToRomanNumerals(90)
            let expected = "XC"
            XCTAssertEqual(expected, actual)
        } catch {
            XCTFail("Unexpected error: \(error)")
        }
    }
    
    func test100() {
        do {
            let actual = try codingChallenge.convertArabicToRomanNumerals(100)
            let expected = "C"
            XCTAssertEqual(expected, actual)
        } catch {
            XCTFail("Unexpected error: \(error)")
        }
    }
    
    func test110() {
        do {
            let actual = try codingChallenge.convertArabicToRomanNumerals(110)
            let expected = "CX"
            XCTAssertEqual(expected, actual)
        } catch {
            XCTFail("Unexpected error: \(error)")
        }
    }
    
    func test300() {
        do {
            let actual = try codingChallenge.convertArabicToRomanNumerals(300)
            let expected = "CCC"
            XCTAssertEqual(expected, actual)
        } catch {
            XCTFail("Unexpected error: \(error)")
        }
    }
    
    func test400() {
        do {
            let actual = try codingChallenge.convertArabicToRomanNumerals(400)
            let expected = "CD"
            XCTAssertEqual(expected, actual)
        } catch {
            XCTFail("Unexpected error: \(error)")
        }
    }
    
    func test500() {
        do {
            let actual = try codingChallenge.convertArabicToRomanNumerals(500)
            let expected = "D"
            XCTAssertEqual(expected, actual)
        } catch {
            XCTFail("Unexpected error: \(error)")
        }
    }
    
    func test600() {
        do {
            let actual = try codingChallenge.convertArabicToRomanNumerals(600)
            let expected = "DC"
            XCTAssertEqual(expected, actual)
        } catch {
            XCTFail("Unexpected error: \(error)")
        }
    }
    
    func test800() {
        do {
            let actual = try codingChallenge.convertArabicToRomanNumerals(800)
            let expected = "DCCC"
            XCTAssertEqual(expected, actual)
        } catch {
            XCTFail("Unexpected error: \(error)")
        }
    }
    
    func test900() {
        do {
            let actual = try codingChallenge.convertArabicToRomanNumerals(900)
            let expected = "CM"
            XCTAssertEqual(expected, actual)
        } catch {
            XCTFail("Unexpected error: \(error)")
        }
    }
    
    func test1000() {
        do {
            let actual = try codingChallenge.convertArabicToRomanNumerals(1000)
            let expected = "M"
            XCTAssertEqual(expected, actual)
        } catch {
            XCTFail("Unexpected error: \(error)")
        }
    }
    
    func test1100() {
        do {
            let actual = try codingChallenge.convertArabicToRomanNumerals(1100)
            let expected = "MC"
            XCTAssertEqual(expected, actual)
        } catch {
            XCTFail("Unexpected error: \(error)")
        }
    }
    
    func test1666() {
        do {
            let actual = try codingChallenge.convertArabicToRomanNumerals(1666)
            let expected = "MDCLXVI"
            XCTAssertEqual(expected, actual)
        } catch {
            XCTFail("Unexpected error: \(error)")
        }
    }
    
    func test1990() {
        do {
            let actual = try codingChallenge.convertArabicToRomanNumerals(1990)
            let expected = "MCMXC"
            XCTAssertEqual(expected, actual)
        } catch {
            XCTFail("Unexpected error: \(error)")
        }
    }
    
    func test528() {
        do {
            let actual = try codingChallenge.convertArabicToRomanNumerals(528)
            let expected = "DXXVIII"
            XCTAssertEqual(expected, actual)
        } catch {
            XCTFail("Unexpected error: \(error)")
        }
    }
    
    func test42() {
        do {
            let actual = try codingChallenge.convertArabicToRomanNumerals(42)
            let expected = "XLII"
            XCTAssertEqual(expected, actual)
        } catch {
            XCTFail("Unexpected error: \(error)")
        }
    }
}

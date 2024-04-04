import XCTest
@testable import SqliteCloudClient

final class SqliteCloudClientTests: XCTestCase {
    func testSum() throws {
        assert(1 + 1 == 2, "1 + 1 should equal 2")
    }
    
    func testExample() throws {
        let _ = connectToDatabase(withConnectionString: "your-connection-string")

        print("created a connection")
        // print(conn)
        
        // XCTest Documentation
        // https://developer.apple.com/documentation/xctest

        // Defining Test Cases and Test Methods
        // https://developer.apple.com/documentation/xctest/defining_test_cases_and_test_methods
    }
}

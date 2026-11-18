import XCTest

final class TigerTrailsTests: XCTestCase {
    func testFillUndoZoomRestoreAndExport() {
        continueAfterFailure = false
        let app = XCUIApplication()
        app.launch()
        app.buttons["page-bengal"].tap()
        let canvas = app.descendants(matching: .any)["canvas"].firstMatch
        XCTAssertTrue(canvas.waitForExistence(timeout: 5))
        app.buttons["Tangerine"].tap()
        let center = canvas.coordinate(withNormalizedOffset: CGVector(dx: 0.51, dy: 0.50))
        let before = canvas.screenshot().pngRepresentation
        center.tap()
        XCTAssertEqual(app.staticTexts["filled"].label, "1 filled")
        XCTAssertNotEqual(canvas.screenshot().pngRepresentation, before)
        app.buttons["Undo"].tap()
        XCTAssertEqual(app.staticTexts["filled"].label, "0 filled")
        app.buttons["Redo"].tap()
        app.buttons["Zoom"].tap()
        app.buttons["Fit"].tap()
        app.terminate()
        app.launch()
        app.buttons["featured"].tap()
        XCTAssertEqual(app.staticTexts["filled"].label, "1 filled")
        app.buttons["Fern"].tap()
        canvas.coordinate(withNormalizedOffset: CGVector(dx: 0.12,dy: 0.18)).tap()
        let shot = XCTAttachment(screenshot: app.screenshot()); shot.name = "Coloring page"; shot.lifetime = .keepAlways; add(shot)
        saveToPhotos(app)
        app.buttons["export"].tap()
        app.buttons["Save PNG to Files"].tap()
        let save = app.buttons["Save"]
        XCTAssertTrue(save.waitForExistence(timeout: 8))
        save.tap()
        XCTAssertTrue(save.waitForNonExistence(timeout: 8))
    }

    func testPhotoPage() {
        continueAfterFailure = false
        let app = XCUIApplication(); app.launch()
        app.buttons["import"].tap()
        #if targetEnvironment(simulator)
        app.buttons["camera"].tap()
        XCTAssertTrue(app.alerts["Camera and photos"].exists)
        app.buttons["OK"].tap()
        #endif
        pickLibraryPhoto(app)
        XCTAssertTrue(app.staticTexts["FROM YOUR PHOTOS"].waitForExistence(timeout: 10), app.debugDescription)
        let canvas = app.descendants(matching: .any)["canvas"].firstMatch
        canvas.coordinate(withNormalizedOffset: CGVector(dx: 0.4,dy: 0.5)).tap()
        XCTAssertEqual(app.staticTexts["filled"].label, "1 filled")
    }
    func testExpandedTigerSelection() {
        continueAfterFailure = false
        let app = XCUIApplication()
        app.launch()
        let home = XCTAttachment(screenshot: app.screenshot())
        home.name = "Start screen"
        home.lifetime = .keepAlways
        add(home)

        app.buttons["Tigers"].tap()
        XCTAssertEqual(app.staticTexts["collectionCount"].label, "60 pages")
        let search = app.textFields["Find an animal"]
        search.tap()
        search.typeText("salt lick\n")
        let result = app.buttons["page-artTigerAtTheSaltLick"]
        XCTAssertTrue(result.waitForExistence(timeout: 5))
        result.tap()
        let canvas = app.descendants(matching: .any)["canvas"].firstMatch
        XCTAssertTrue(canvas.waitForExistence(timeout: 5))
        app.buttons["Tangerine"].tap()
        let before = canvas.screenshot().pngRepresentation
        canvas.coordinate(withNormalizedOffset: CGVector(dx: 0.5, dy: 0.5)).tap()
        XCTAssertNotEqual(canvas.screenshot().pngRepresentation, before)
        XCTAssertTrue(app.buttons["Undo"].isEnabled)
        app.buttons["Undo"].tap()
    }

    func testSearchAndTigerCollection() {
        continueAfterFailure = false
        let app = XCUIApplication(); app.launch()
        
        let query = app.textFields["Find an animal"]
        query.tap()
        query.typeText("moose\n")
        XCTAssertTrue(app.buttons["page-moose"].waitForExistence(timeout: 4))
        app.buttons["Tigers"].tap()
        XCTAssertTrue(app.staticTexts["No matching animals"].exists || app.staticTexts["No matching animals."].exists)
    }

    private func pickLibraryPhoto(_ app: XCUIApplication) {
        app.buttons["photoLibrary"].tap()
        let thumbnail = app.images.matching(NSPredicate(format: "label BEGINSWITH[c] %@", "Photo,")).firstMatch
        XCTAssertTrue(thumbnail.waitForExistence(timeout: 10), app.debugDescription)
        thumbnail.tap()
    }

    private func saveToPhotos(_ app: XCUIApplication) {
        app.buttons["export"].tap()
        app.buttons["Save to Photos"].tap()
        XCTAssertTrue(app.staticTexts["Your artwork was saved to Photos."].waitForExistence(timeout: 9), app.debugDescription)
        app.buttons["OK"].tap()
    }
}

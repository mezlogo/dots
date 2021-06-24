export class TestSuite {

    tests = {};

    addTest(testName, test) {
        this.tests[testName] = test;
    }

    addSuite(suiteName, addTestsToSuite) {
        addTestsToSuite((testName, test) => this.addTest(`${suiteName}\t${testName}`, test));
    }

    eq(msg, expected, actual) {
        if (expected !== actual) {
            throw new Error(`${msg}\n\tactual: |${actual}|\n\texpected: |${expected}|`);
        }
    }

    run() {
        for (const [testName, test] of Object.entries(this.tests)) {
            try {
                test(this.eq);
                console.log(`PASSED: ${testName}`);
            } catch (e) {
                console.log(`FAILED: ${testName}\nCAUSE: ${e.stack}`);
            }
        }
    }
}

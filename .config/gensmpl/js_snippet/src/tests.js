import { mySnippet } from "./snippet.js";
import { TestSuite } from "./autotests.js";

const testSuite = new TestSuite();

testSuite.addSuite("My snippet group of tests", addTest => {
    addTest("Greet Bob", eq => eq("You should not see this msg", "Hello, Bob!", mySnippet("Bob")));
    addTest("Throw Error", eq => eq("Should throw exception", "Random string", mySnippet("Bill")));
});

testSuite.run();
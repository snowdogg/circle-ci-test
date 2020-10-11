const { TestScheduler } = require("jest");

window.$ = require('./jquery-3.4.1.min.js')


const randomSize = require("./dots")


expect.extend({
    toBeWithinRange(received, floor, ceiling) {
        const pass = received >= floor && received <= ceiling;
        if (pass) {
            return {
                message: () =>
                    `expected ${received} not to be within range ${floor} - ${ceiling}`,
                pass: true,
            };
        } else {
            return {
                message: () =>
                    `expected ${received} to be within range ${floor} - ${ceiling}`,
                pass: false,
            };
        }
    },
});


test('randomizes a 2 decimal number between 0 and 1', randomNumberTest);

function randomNumberTest() {
    expect(randomSize).toBeWithinRange(0, 1);
}



const main = async function () {

    const outputMessage = async function (message) {

        try {

            console.log(message);
            return message;
        } catch (e) {

            console.log(e);
        }
    }

    const output = await outputMessage("Hello world!");

    console.log("result is: " + output);

    return true;
}

module.exports = main;
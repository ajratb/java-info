

const outputMessage = function (message) {

    try {

        console.log(message);
        return message;
    } catch (e) {

        console.log(e);
    }
}

const output = outputMessage("Hello world!");
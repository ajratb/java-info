const cky01 = require('./template');

(async () => {

    try {
        const res = await cky01();
        if (res) {
            console.log("CKY test passed.");
        } else {
            console.log("CKY test failed.");
        }    

    } catch (e) {
        console.log("CKY test failed.");
    }

    
	
})();


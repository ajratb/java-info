const { Client } = require('@elastic/elasticsearch');
const client = new Client({ node: 'http://127.0.0.1:9200',
    auth: { username: 'elastic', password: '***'}, });

client.index({
    index: 'third_index',
    body: {
        message: 'Hello, World222!'
    }
}, (err, result) => {
    if (err) console.log(err);
    else console.log(result);
});
const pino = require('pino');
const pinoElastic = require('pino-elasticsearch');

const streamToElastic = pinoElastic({
    index: 'third-index',
    node: 'http://127.0.0.1:9200',
    consistency: 'one',
    auth: {
        username: 'elastic',
        password: '****'
    }
});

const logger = pino(streamToElastic);

logger.info('Hello, World!3434');

console.log("END");
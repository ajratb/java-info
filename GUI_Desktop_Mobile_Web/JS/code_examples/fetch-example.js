fetch('http://127.0.0.1:3000/')
    .then(response => response.json())
    .then(data => console.log(data))
    .catch(error => console.error('Error:', error));



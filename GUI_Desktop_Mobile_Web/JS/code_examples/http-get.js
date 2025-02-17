
const content = fetch("http://localhost:3000")
  .then((response) => response.text())
  .then((content) => { return content; })
  .catch(error => {
     console.error('Failed to fetch page: ', error)
  });

  var window = eval(content.then((a) => { return a;})); 

  console.log(window.then((a) => console.log(a)));
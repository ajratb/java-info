const content = fetch("https://smk-stat.grfc.ru/ureg/rt/cky.js")
  .then((response) => response.text())
  .then((content) => { return content; })
  .catch(error => {
     console.error('Failed to fetch page: ', error)
  });

  var window = eval(content.then((a) => { return a;})); 

  console.log(window.then((a) => console.log(a)));
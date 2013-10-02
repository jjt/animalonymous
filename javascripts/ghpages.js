var inputForm = document.getElementById('example'),
    input = document.getElementById('exampleInput'),
    output = document.getElementById('exampleOutput');

inputForm.addEventListener('submit', function(event) {
  event.preventDefault();
  output.innerHTML = animalonymous.hashStr(input.value);
  window.location.hash = input.value;
  return false; 
}, false);

var wlh = window.location.hash;
if(wlh) {
  input.value = wlh.substr(1,wlh.length);
  output.innerHTML = animalonymous.hashStr(input.value);
}

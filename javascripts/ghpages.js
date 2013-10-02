var inputForm = document.getElementById('example'),
    input = document.getElementById('exampleInput'),
    output = document.getElementById('exampleOutput');

inputForm.addEventListener('submit', function(event) {
  output.innerHTML = animalonymous(input.value);
  event.preventDefault();
  return false; 
}, false);


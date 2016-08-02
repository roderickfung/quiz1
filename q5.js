// 5. Write a function in JavaScript that takes in a number n and returns the first n even numbers.

var even = function (n){
  var counter = 0;
  var i = 1;
  while (counter < n){
    if (i%2===0){
      console.log(i);
      i++;
      counter++;
    } else {
      i++;
    }
  }
}

even(10);

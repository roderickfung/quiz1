var majorCities = {
  BC: ["Vancouver", "Victoria", "Prince George"],
  AB: ["Edmonton", "Calgary"]
};

function cities(x){
  counter = ""
  for (var i in x){
    for (var j in x[i]){
      counter++;
    }
    console.log(i + " has " + counter + " cities.");
  }
  return x
}

cities(majorCities);

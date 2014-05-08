/*
U3.W8-9: Gradebook from Names and Scores

You will work with the following two variables.  The first, students, holds the names of four students.  
The second, scores, holds groups of test scores.  The relative positions of elements within the two 
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

Do not alter the students and scores code.

I worked on this challenge by myself.

*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.

function average (my_array) {
  i = 0;
  sum = 0;
  while (i < my_array.length)
  {
    var sum = sum + my_array[i];
    i = i + 1;
  }
  return sum/my_array.length;
};

function addScore (name, score) {
  scores[students.indexOf(name)].push(score);
};

function getAverage (name) {
  return average(scores[students.indexOf(name)]);
};

var gradebook = {
  Joseph: {testScores: scores[0]},
  Susan: {testScores: scores[1]},
  William: {testScores: scores[2]},
  Elizabeth: {testScores: scores[3]},
  addScore: addScore,
  getAverage: getAverage
};




// __________________________________________
// Refactored Solution








// __________________________________________
// Reflect

/*
Good heavens. This exercise reminds me of when I first started living in a French-speaking area, and I couldn't speak French. I could, however, speak German, although my mother-tongue is English. Whenever somebody asked me a question in French and I happened to understand it, my brain would process "That question is in Foreign Language. You must respond using Foreign Language..." and so I'd reply to their French question in German.

The same thing is happening here. I'm being asked a question in JavaScript, and my brain just wants to speak Ruby. I was actually pleased with how quickly I was able to throw some JavaScript together, but I had to do quite a bit of web research to remind my brain to pull some JS out of its deep, dark corners.

I have no idea if I included the functions in the Object correctly, and can't think of any way to refactor this. It was an uphill battle making sense of it at all. :-)




*/


// __________________________________________
// Driver Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "1. "
)

assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "2. "
)

assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "3. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "4. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "5. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "6. "
)

gradebook.addScore("Susan", 80)

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "7. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Jospeh'.",
  "9. "
)
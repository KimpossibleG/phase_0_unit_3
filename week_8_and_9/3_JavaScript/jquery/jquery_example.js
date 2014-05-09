$(document).ready(function(){
 
//RELEASE 0: 
  //Link this script and the jQuery library to the jquery_example.html file and analyze what this code does. 
 
$('body').css({'background-color': 'pink'})

//This selects all of the 'body' elements acts as a .css to change the background color to pink 
//RELEASE 1:
  //Add code here to select elements of the DOM 
$('body').select


var bodyElement = $('body') 
var h1Element = $('h1')

//Really have no idea what I'm supposed to be doing here. Typing bodyElement into the console gives me an error that bodyElement is not defined.
 
//RELEASE 2: 
  // Add code here to modify the css and html of DOM elements
$('h1').css({'color': 'blue', 'border': 'solid 1px', 'visibility': 'visible'});
$( "h1:contains('Hello')").html("Fireflies");
 
 
//RELEASE 3: Event Listener
  // Add the code for the event listener here 

$('img').attr('src', 'dbc_logo.png').on('mouseover', function(e){
    e.preventDefault()
	$(this).attr('src', 'firefly.jpg'),
	$(this).animate({'height': '800px', 'border': 'dashed 3px'})
});


$('img').on('mouseleave', function(e){
    e.preventDefault()
    $(this).attr('src', 'dbc_logo.png'),
    $(this).animate({'height': '100px'})
})


 
//RELEASE 4 : Experiment on your own
// incorporated as part of the mouseover and mouseleave
 
 
 
})  // end of the document.ready function: do not remove or write DOM manipulation below this.

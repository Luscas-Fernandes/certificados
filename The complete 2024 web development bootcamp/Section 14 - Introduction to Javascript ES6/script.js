// ---------------------- ALERT ---------------------- 

/* var userName = prompt("What is your name: ");

alert("Hello " + userName); */

function test(){
    var a = "3";
    var b = "8";

    /* Do not change the code above */
    // Write your code on the three lines below
    var temp = a;
    a = b;
    b = temp
    /* Do not change the code below */
    console.log("a is " + a);
    console.log("b is " + b);
}

/* test(); */

/* String length and retrieving the number of characters */

// ---------------------- EOF ALERT ---------------------- 


// ---------------------- Length ---------------------- 

/* var name = "Lucas";

console.log(name.length);

var big_text = prompt("Write your tweet: ");

alert("your tweet size: " + big_text.length + " characters, you have: " + (140 - big_text.length) + " characters left."); */

// ---------------------- EOF LENGTH ----------------------    


// ---------------------- slicing of string ---------------------- 

/* var big_text = prompt("Write your tweet: ");

alert("Your tweet: " + big_text.slice(0, 140) + " with maximum of 140 characters"); */

// ---------------------- EOF slicing ----------------------

// ---------------------- ToUpperCase ---------------------- 

/* var name = "Lucas";

alert(name.toUpperCase()); */

/* var name = prompt("Your name: ").toUpperCase();

alert("Hello " + name); */


/* Exercise of returning first letter of name capitalized  */

/* var name = prompt("what's your name: ").toLowerCase();
name = name.slice(0, 1).toUpperCase() + name.slice(1, name.length);
alert("Hi " + name); */


// ---------------------- EOF ToUpperCase ---------------------- 

// ---------------------- BASIC Arithmetic ---------------------- 

var dogAge = prompt("what's your dog age: ");
dogAge = (dogAge - 2) * 4 + 21;
alert("your dog age is: " + dogAge);



// ---------------------- EOF BASIC Arithmetic ---------------------- 
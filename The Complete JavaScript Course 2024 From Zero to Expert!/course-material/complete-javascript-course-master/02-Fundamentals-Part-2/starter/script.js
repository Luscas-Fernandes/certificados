'use strict';

/* 
let hasDriversLicense = false;
const passTest = true;

passTest ? hasDriversLicense = 1 : hasDriversLicense = 0;
hasDriversLicense ? console.log(`i can drive`) : console.log(`i can't drive`);
 */
/* 
const interface = 'audio';
const private = 'audio'; 
*/

/* 
function logger()
{
    console.log(`my name is jonas`);
}

logger();

function fruitProcesser(apples, oranges)
{
    console.log(apples, oranges);
    const juice = `Juice with ${apples} apples and ${oranges} oranges.`;
    return juice;
}

console.log(fruitProcesser(4, 3));
 */

// Function declaration
/* function calcAge(birthYear)
{
    return 2024 - birthYear;
}


// Function expression
const calcAge2 = function (birthYear) // Anonymous function
{
    return 2024 - birthYear;
}

const age2 = calcAge2(2002);
console.log(calcAge(2002), age2); */

// Arrow function
/* const calcAge3 = birthYear => 2024 - birthYear;
const age3 = calcAge3(2002);
console.log(age3);

const yearsUntilRetirement = (birthYear, firstName) => {
    const age = 2024 - birthYear;
    const retirement = 65 - age;
    return `${firstName} retires in ${retirement} years!`;
}

console.log(yearsUntilRetirement(2002, "Lucas"));
console.log(yearsUntilRetirement(1973, "Lucas")); */

/* function cutFruit(fruit) {
    return fruit * 4;
}   

function fruitProcessor(apples, oranges)
{
    const applePieces = cutFruit(apples);
    const orangePieces = cutFruit(oranges);

    const juice = `Juice with ${applePieces} apples and ${orangePieces} oranges.`;
    return juice;
}

console.log(fruitProcessor(2,3)); */


/* function calcAge(birthYear){
    return 2024 - birthYear;
}

const yearsUntilRetirement = function (birthYear, firstName){
    const age = calcAge(birthYear);
    const retirement = 65 - age;
    
    return retirement;
    //return `${firstName} retires in ${retirement} years!`;
}

console.log(yearsUntilRetirement(2002, 'Lucas'));
console.log(yearsUntilRetirement(1992, 'Julius')); */

// arrays

const friends = ['Michael', 'Jackson', 'Yeehee'];
console.log(friends);

friends[2] = 'WUUUUUOW'; // const but muttable, only primitive values are inmutable
console.log(friends);
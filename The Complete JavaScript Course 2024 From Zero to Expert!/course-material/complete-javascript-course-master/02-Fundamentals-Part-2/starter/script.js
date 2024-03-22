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
const calcAge3 = birthYear => 2024 - birthYear;
const age3 = calcAge3(2002);
console.log(age3);

const yearsUntilRetirement = (birthYear, firstName) => {
    const age = 2024 - birthYear;
    const retirement = 65 - age;
    return `${firstName} retires in ${retirement} years!`;
}

console.log(yearsUntilRetirement(2002, "Lucas"));
console.log(yearsUntilRetirement(1973, "Lucas"));
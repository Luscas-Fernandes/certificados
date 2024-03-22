/* sectiom 1
let js = "amazing";

console.log(40+8+23-10);
console.log("jonas");
console.log(23);

let firstName = "jonas"; 
console.log(firstName);

 */

/* 
console.log(true);

let jsFun = true;
if (jsFun == true) console.log("AAAAAAA");

console.log(typeof true);
console.log(typeof "jonas");
console.log(typeof 42); */

/* 
let age = 30;
age = 31;

const birthYear = 2002;
birthYear = 2003;

var job = "programmer";
job = "teacher";

lastName = "Fernandes"; // global object
console.log(lastName); */

/* const currentYear = 2024;
const ageLucas = currentYear - 2002;
const ageLaura = currentYear - 2003;

console.log(ageLaura, ageLucas);
console.log(ageLaura * 2, ageLucas / 10, 2 ** 3);

const firstName = "Lucas";
const lastName = "Fernandes";
console.log(firstName + " " + lastName);

let x = 10 + 5;
x += 10;
x++;
++x;
x*=4;
x/=4;
console.log(x);

console.log(ageLaura > ageLucas);
console.log(ageLaura > 18);

const isFullAge = ageLaura >= 18;
console.log(isFullAge);
 */

/* const firstName = "lucas";
const job = "student";
const birthYear = 2002;
const currentYear = 2024;


const lucas = "I'm " + firstName + ", a " + (currentYear - birthYear) + " year old " + job + "!";
console.log(lucas);

// Now a template literal

const LucasNew = `I'm ${firstName}, a ${(currentYear - birthYear)} year old ${job}!`;
console.log(LucasNew);

console.log(`Just a regular string hehe!`) // A number of programmers use backticks to any regular/template literal string
 */

/* const age = 17;
const isOldEnough = age >= 18;

if(isOldEnough)
    console.log(`Sara is old enough to start driving, age: ${age}`);
else
    console.log(`Sara's not old enough: ${age}, wait another ${18 - age} year(s)`); */


// type conversion
/* console.log(Number("Jonas"));
console.log(typeof Number("Jonas"));

console.log(String(2001));
console.log(typeof String(2001));

// type coercion
console.log("i'm " + 23 + " years old");
console.log("23 " - 10 - "3");
console.log("23 " + 10 + "3");
console.log("23" * "2");

let n = "1" + 1;
n--;
console.log(n);
console.log(9+3+4+'5'); */

// Only 5 falsy values in JS: 0, '', undefined, NULL and NaN

/* console.log(Boolean(0));
console.log(Boolean('0'));
console.log(Boolean(''));
console.log(Boolean(undefined));
console.log(Boolean(null));
console.log(Boolean(NaN));
console.log(Boolean({}));


let height = 0; 

if(height)
    console.log(`height's defined`);
else
    console.log(`Height's undefined or any falsy value`); */


/* const age = 18;

if(age === 18) // triple === does not perform type coercion, whilst == does peform
console.log(`You've just became an adult`);

if(age == "18") // triple === does not perform type coercion, whilst == does peform
    console.log(`You've just became an adult, ==`); */

/* 
const day = "frida";

switch(day)
{
    case "monday":
        console.log(`Today is monday!\nPlan Week`);
        break;
    case "tuesday":
        console.log(`Study research`);
        break;
    case "wednesday":
    case "thursday":
        console.log(`facul pá`);
        break;
    case "friday":
        console.log(`Extensão cedo`);
        break;
    default:
        console.log(`Not a valid day`);
}
 */

/* const age = 23;

age >= 18 ? console.log(`I'd like to drink wine`) : console.log(`I'd like to drink water`);

const drink = age >= 18 ? `Wine` : `Water`;
console.log(`I'd like to drink ${drink}, please`);

console.log(`I'd like to drink ${age >= 18 ? `wine` : `water`}, please, ternary!`);
 */
const audios = ["tom-1.mp3", "tom-2.mp3", "tom-3.mp3", "tom-4.mp3", "snare.mp3", "kick-bass.mp3", "crash.mp3"];
const audiosObjects = [];

for (let i = 0; i < audios.length; i++)
        audiosObjects[i] = new Audio("sounds/" + audios[i]);


pressedKey = (key) => { // corno job, da p fazer melhor com um json, absolutamente
        switch(key){
                case 'w':
                        audiosObjects[0].play()
                        break
                case 'a':
                        audiosObjects[1].play()
                        break
                case 'l':
                        audiosObjects[2].play()
                        break
                case 't':
                        audiosObjects[3].play()
                        break
                case 'e':
                        audiosObjects[4].play()
                        break
                case 'r':
                        audiosObjects[5].play()
                        break
                case 's':
                        audiosObjects[6].play()
                        break
        }
};

for(let i=0; i < document.querySelectorAll(".drum").length; i++) {
        document.querySelectorAll(".drum")[i].addEventListener("click", function (event) {
                var buttonInnerHtml = this.innerHTML;
                pressedKey(buttonInnerHtml);
        }) 
}

document.addEventListener("keydown", function (event) {  
        pressedKey(event.key);
})


/* CALCULATOR ASKED IN THE COURSE ? */

/* 
function add(n1, n2){
        return n1 + n2;
}

function subtract(n1, n2){
        return n1 - n2;
}

function multiply(n1, n2){
        return n1 * n2;
}

function divide(n1, n2){
        if (n2 === 0)
                return `cannot divide by 0, seu demonio`;

        return n1 / n2;
}

function calculator(n1, n2, operator){
        return operator(n1, n2);
}

console.log(calculator(5, 7, multiply));
console.log(calculator(5, 7, add));
console.log(calculator(5, 7, divide));
console.log(calculator(5, 0, divide));
console.log(calculator(5, 7, subtract));
 
*/

/* 

// can be a class
function ConstructorHouseKeeper(yearsOfExperience, name, cleaningRepertoire){
        this.yearsOfExperience = yearsOfExperience;
        this.name = name;
        this.cleaningRepertoire = cleaningRepertoire;
        this.clean = function(){
                alert("I'm cleaning!");
        }
}

houseKeeper = new ConstructorHouseKeeper(12, "jane", ["lobby", "hall", "room", "closets"]);

console.log(houseKeeper.yearsOfExperience, houseKeeper.name);

for(let i = 0; i < houseKeeper.cleaningRepertoire.length; i++)
        console.log(houseKeeper.cleaningRepertoire[i]);

houseKeeper.clean();

 */
const randomNumber = async () => {
    await new Promise(r => setTimeout(r, 50)); // so the timestamp gets a little different and the random get randomner
    return Math.floor(Math.random() * 6 + 1);
}

const playersDiceNumbers = async () => {
    const dice1 = await randomNumber();
    const dice2 = await randomNumber();
    return [dice1, dice2]; 
}

const getWinner = (arrayDices) => {
    let winner = "";

    if (arrayDices[0] === arrayDices[1])
        winner = "🚩 It's a draw! 🚩";
    else if(arrayDices[0] <= arrayDices[1])
        winner = "Player 2 Wins! 🚩";
    else
        winner = "🚩 Player 1 Wins!";

    return winner;
}

const getImage = (diceNumber) => {
    switch(diceNumber) {
        case 1:
            return "dice1";
        case 2:
            return "dice2";
        case 3:
            return "dice3";
        case 4:
            return "dice4";
        case 5:
            return "dice5";
        case 6:
            return "dice6";
        default:
            return "unknown-dice"; // in case there's an unexpected value, idk
    }
}

const gameRun = async () => {
    const dices = await playersDiceNumbers();

    const winner = getWinner(dices);

    const imageP1 = getImage(dices[0]);
    const imageP2 = getImage(dices[1]);

    //console.log(dices, winner, imageP1, imageP2);
    return [dices, winner, imageP1, imageP2];
}

const displayGame = async () => {
    const gameInfo = await gameRun();
    document.querySelector("h1").textContent = gameInfo[1];
    document.getElementById("player1-dice").setAttribute("src", "images/" + gameInfo[2] + ".png")
    document.getElementById("player2-dice").setAttribute("src", "images/" + gameInfo[3] + ".png")

    console.log(gameInfo)
}

displayGame();

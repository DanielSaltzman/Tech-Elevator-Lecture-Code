/*
* Add Events and functions to move the Ship and Win the game
*/
// Creates the Grid -- this should only occur after the DOM loads
<<<<<<< HEAD
document.addEventListener('DOMContentLoaded', () =>{
    createGrid();
    document.querySelector('body').addEventListener('keyup', (event) => {
        if (event.key === 'ArrowRight'){
            moveShipRight();
        }
        if (event.key === 'ArrowLeft'){
            moveShipLeft();
        }
        if (event.key === 'ArrowDown'){
            moveShipDown();
        }
        if (event.key === 'ArrowUp'){
=======
document.addEventListener('DOMContentLoaded', () => {
    createGrid();
    document.querySelector('body').addEventListener('keyup', (event) => {
        if (event.key === 'ArrowRight') {
            moveShipRight();
        }    
        if (event.key === 'ArrowLeft') {
            moveShipLeft();
        }
        if (event.key === 'ArrowDown') {
            moveShipDown();
        }
        if (event.key === 'ArrowUp') {
>>>>>>> 8b78e057775d418691169d51503e72c097c95e20
            moveShipUp();
        }
    });
});

<<<<<<< HEAD
function moveShipUp(){
    const ship = getShipLocation();
   
=======
function moveShipUp() {
    const ship = getShipLocation();
>>>>>>> 8b78e057775d418691169d51503e72c097c95e20
    const up = getUpperOrLowerElementAtIndex(ship, ship.parentElement.previousElementSibling);
    moveShip(ship, up);
}

<<<<<<< HEAD
function moveShipDown(){
    const ship = getShipLocation();
    const down = getUpperOrLowerElementAtIndex(ship, ship.parentElement.nextElementSibling);

    moveShip(ship, down);
=======
function moveShipDown() {
    const ship = getShipLocation();
    const down = getUpperOrLowerElementAtIndex(ship, ship.parentElement.nextElementSibling);

    moveShip(ship, down); 
>>>>>>> 8b78e057775d418691169d51503e72c097c95e20
}

function moveShipLeft() {
    const ship = getShipLocation();
    const left = ship.previousElementSibling;
<<<<<<< HEAD

   moveShip(ship, left);
=======
    
    moveShip(ship, left);  
>>>>>>> 8b78e057775d418691169d51503e72c097c95e20
}

function moveShipRight() {
    const ship = getShipLocation();
    const right = ship.nextElementSibling;

<<<<<<< HEAD
    moveShip(ship, right);
}

function moveShip(shipElement, newElement) {
    if (canMoveTo(shipElement, newElement)){
    shipElement.classList.remove('boat');
    newElement.classList.add('boat');
    }
}

function canMoveTo(shipElement, newElement){
    if(newElement == null || newElement.classList.contains('pirate')) {
        return false;
    }
    if (isWin(newElement)){
=======
    moveShip(ship, right);  
}

function moveShip(shipElement, newElement) {
    if (canMoveTo(shipElement, newElement)) {
        shipElement.classList.remove('boat');
        newElement.classList.add('boat');  
    }
}

function canMoveTo(shipElement, newElement) {
    if (newElement == null || newElement.classList.contains('pirate')) {
        return false;
    }
    if (isWin(newElement)) {
>>>>>>> 8b78e057775d418691169d51503e72c097c95e20
        win();
        return false;
    }
    return true;
}

<<<<<<< HEAD
function win(){
    const winText = document.querySelector('.announce');
    winText.classList.add('winText');
    winText.innerText = "You Win!";
    getShipLocation().classList.remove('boat');
}

function isWin(nextElement) {
    if (nextElement.classList.contains('treasure')){
=======
function isWin(nextElement) {
    if (nextElement.classList.contains('treasure')) {
>>>>>>> 8b78e057775d418691169d51503e72c097c95e20
        return true;
    }
    return false;
}

<<<<<<< HEAD
function getShipLocation(){
    return document.getElementById('frame').querySelector('.boat');
}

function getUpperOrLowerElementAtIndex(ship, newRow){
    let elementAtIndex = null;
    if (newRow != null){
=======
function win() {
    const winText = document.querySelector('.announce');
    winText.classList.add('winText');
    winText.innerText = "You Win!";
    getShipLocation().classList.remove('boat');
}

function getShipLocation() {
    return document.getElementById('frame').querySelector('.boat');
}

function getUpperOrLowerElementAtIndex(ship, newRow) {
    let elementAtIndex = null;
    if (newRow != null) {
>>>>>>> 8b78e057775d418691169d51503e72c097c95e20
        const index = getIndexOfElement(ship);
        elementAtIndex = newRow.childNodes[index];
    }
    return elementAtIndex;
}

function getIndexOfElement(element) {
    return Array.from(element.parentNode.children).indexOf(element);
}

/**
 * Reset the Game
 */
function resetGame() {
<<<<<<< HEAD
    const frame = document.getElementById('frame');
=======
    const frame  = document.getElementById('frame');
>>>>>>> 8b78e057775d418691169d51503e72c097c95e20
    frame.firstElementChild.firstElementChild.classList.add('boat');
    frame.lastElementChild.lastElementChild.classList.add('treasure');
}

/**
 * Creates the game grid
 */
function createGrid() {
    const frame = document.getElementById('frame');
    // Add Code to create the game grid
    for (let i = 0; i < 10 ; i++) {
        buildRow(frame); 
    }
    resetGame();
}

/**
 * Builds the grid rows
 * @param {element} frame 
 */
function buildRow(frame) {
   // Add code to create rows
   const row = document.createElement('div');
   row.classList.add('row');
   frame.insertAdjacentElement('beforeend', row);
    for (let i = 0; i < 10 ; i++) {
        buildSquare(row, i); 
    }    
}

/**
 * Builds the grid squares 
 * @param {element} row 
 * @param {int} count 
 */
function buildSquare(row, count) {
   // Add code to create the grid Squares
    const container = document.createElement('div');
    container.classList.add('square');

    // Randomly creates pirates, but not on the first elemment
    if (count > 1) {
        if ((Math.floor(Math.random() * 100) + 1) > 85) {
            // Add the pirates here
            container.classList.add('pirate');
<<<<<<< HEAD

=======
>>>>>>> 8b78e057775d418691169d51503e72c097c95e20
        } 
    }
    row.insertAdjacentElement('beforeend', container);
}




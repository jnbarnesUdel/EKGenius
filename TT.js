var arr = [];

//make array of 6 random starting letters
var letters =  [String.fromCharCode(Math.floor(Math.random() * (25) + 65)), String.fromCharCode(Math.floor(Math.random() * (25) + 65)), String.fromCharCode(Math.floor(Math.random() * (25) + 65)), 
String.fromCharCode(Math.floor(Math.random() * (25) + 65)), String.fromCharCode(Math.floor(Math.random() * (25) + 65)), String.fromCharCode(Math.floor(Math.random() * (25) + 65))];

letters.sort();
var letter = document.getElementById("letters given");

//make json obj of starting letters
var str_json = JSON.stringify(letters);

//send json to php
var request= new XMLHttpRequest();
request.open("POST", "https://jnbarnesudel-1.paiza-user.cloud/~ubuntu/letters.php", true);
request.setRequestHeader("Content-type", "application/json");
request.send(str_json);

setTimeout(function afterOneSeconds() {
var re = request.response;
JSON.parse(re);
var reArray = re.split(/,|@@/);
var prev = reArray[0];
    for(var element in reArray){
        if(reArray[element] != prev && reArray[element] != '"'){
            arr.push(reArray[element]);
            prev = reArray[element];
            var node = document.createElement("LI"); 
            var textnode = document.createTextNode(reArray[element].replace(/./g, '*'));
            node.appendChild(textnode);
            list.appendChild(node);
        }
    }

}, 1000);


var list = document.getElementById("guessed words");

//fill in letters
letter.innerHTML = letters.join();

function guessed(){
        var guess = document.getElementById("guess").value;
        for(var element in arr){
            if(arr[element] == guess){
                var tn = document.createTextNode(guess);
                var item = document.getElementById("guessed words").childNodes[element];
                list.replaceChild(tn, item);
            }   
        }
        document.getElementById("guess").value = '';
}


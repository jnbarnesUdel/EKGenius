function guessed(){
        var patient = document.getElementById("patinet").value;
    
        //make json obj of starting letters
        var str_json = JSON.stringify(letters);
    
        //send json to php
        var request= new XMLHttpRequest();
        request.open("POST", "letters.php", true);
        request.setRequestHeader("Content-type", "application/json");
        request.send(str_json);
    
        setTimeout(function afterOneSeconds() {
            var re = request.response;
            JSON.parse(re);
        }, 1000)
}


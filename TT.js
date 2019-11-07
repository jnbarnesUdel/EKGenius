function entered(){
        var user = document.getElementById("User").value;
    
        //make json obj of starting letters
        var str_json = JSON.stringify(user);
    
        //send json to php
        var request= new XMLHttpRequest();
        request.open("POST", "serverside.php", true);
        request.setRequestHeader("Content-type", "application/json");
        request.send(str_json);
    
        setTimeout(function afterOneSeconds() {
            var re = request.response;
            JSON.parse(re);
        }, 1000);
}

function newPatient(){
        window.location.href = '/newPatient.html';       
}

function enterData(){
        var i = document.getElementById("id").value;
        var f = document.getElementById("firstName").value;
        var l = document.getElementById("lastName").value;
        var n = document.getElementById("illness").value;
        var data = [{key:id, i},
                    {key:firstName, f}, 
                    {key:lastName, l},
                    {key:illness, n];
        var data_json = JSON.stringify(data);
        
        //send json to php
        var request= new XMLHttpRequest();
        request.open("POST", "serverside.php", true);
        request.setRequestHeader("Content-type", "application/json");
        request.send(data_json);
    
        setTimeout(function afterOneSeconds() {
            var re = request.response;
            JSON.parse(re);
        }, 1000);
}

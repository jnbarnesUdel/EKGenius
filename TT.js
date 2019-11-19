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
            re = JSON.parse(re);
            for(var stuff in re[0]){
                    console.log(stuff);
                    console.log(re[stuff]);
                    document.getElementById("firstName").value = re[stuff].firstName; 
                    document.getElementById("lastName").value = re[stuff].lastName;
                    document.getElementById("illness").value = re[stuff].illness;
            }
        }, 1000);
}

function newPatient(){
        window.location.href = '/newPatient.html';       
}

function enterData(){
        var id = document.getElementById("id").value;
        var firstName = document.getElementById("firstName").value;
        var lastName = document.getElementById("lastName").value;
        var illness = document.getElementById("illness").value;
        var data = [{id},
                    {firstName}, 
                    {lastName},
                    {illness}];
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

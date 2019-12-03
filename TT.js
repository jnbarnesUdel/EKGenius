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
                console.log(re[0]);

                document.getElementById("firstName").value = re[0].firstName; 
                document.getElementById("lastName").value = re[0].lastName;
                document.getElementById("illness").value = re[0].illness;
                 g2 = new Dygraph(
	                document.getElementById("graphdiv2"),
	                "right-left-center.csv", // path to CSV file
	                {}          // options
	          );
        }, 1000);
}

function newPatient(){
        window.location.href = '/newPatient.html';       
}

function back(){
        window.location.href = '/index.html';       
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

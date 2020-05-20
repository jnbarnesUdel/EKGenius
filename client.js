//import Plotly from "plotly.js"
// Your web app's Firebase configuration
  var firebaseConfig = {
    apiKey: "AIzaSyBXPna-1pT1k2GzQMVYA8UDM8c5ypyx5ko",
    authDomain: "ekgenius-207b2.firebaseapp.com",
    databaseURL: "https://ekgenius-207b2.firebaseio.com",
    projectId: "ekgenius-207b2",
    storageBucket: "ekgenius-207b2.appspot.com",
    messagingSenderId: "319938850829",
    appId: "1:319938850829:web:00984e3d81a43f37a0a544"
  };

// Initialize Firebase
firebase.initializeApp(firebaseConfig);
var h = document.getElementById("head").innerHTML;
var root = "/";
var cloud = firebase.firestore();
var loc = "/doctors";
var db = firebase.database();
var stuff;
var count = 0;
var user;
var doc = "";
var things;
/*
db.ref(loc).on("value", function(snapshot) {
  var stuff = snapshot.val()
  for(var id in stuff){
    console.log(id);
  }
}, function (errorObject) {
  console.log("The read failed: " + errorObject.code);
});
*/

//lets do user stuff here
var d = new Date();
//testing for plot stuff
db.ref("/Blue").on("value", function(snap){
    console.log("blue");
    $("#boards").empty();
    stuff = snap.val();
    for(var id in stuff){
      console.log(id);
      console.log(stuff[id]);
      var thing = "/dataStore/";
      thing += id;
      console.log(thing);
      var remov = "/Blue/";
      remov += id;
      //take care of the count
      db.ref(thing).on("value", function(snap){
        $("#boards").empty();
        things = snap.val();
        count = 0;
        for(var id in things){
          count = count + 1;
        }
      }); 
      db.ref(thing).child(count).set({data: stuff[id]});
      db.ref(remov).set({});
    }
  },
function (errorObject) {
  console.log("The read failed: " + errorObject.code);
}); 


let clickablePerson = function(yourname, mov){
  this.yourname = yourname;
  this.mov = mov;
  
  this.generateEl = function(){
    var that = this;
    this.$el = $(`<p>${yourname}</p>`);
    this.$el.on('click', function(){
      that.selected();
    });
    document.getElementById("ubar").innerHTML = "Click a Patient or add a new one";
     $("#but").empty();
    $("#but").append("<button id = b1 type = 'button'> Add patient </button>");
    document.getElementById("b1").addEventListener("click", addPatientBut.bind(window));
  };
  
  this.selected = function(){
    document.getElementById("head").innerHTML = this.yourname;
    loc = this.mov;
    render();
}
  
  this.generateEl();
}

let People = function(firstName, lastName, illness, mov, data){
  this.firstName = firstName;
  this.lastName = lastName;
  this.illness = illness;
  this.mov = mov;
  this.data = data;
  /*cloud.collection("EKG").get().then((querysnapShot) =>{
    querysnapShot.forEach((doc)=> {
      console.log(`${doc.id} => ${doc.data()}`);
    });
  });*/
  var x = [];
  for(var i in data){
    x.push(i)
  }
  console.log(x);
  this.generateEl = function(){
    var TESTER = document.getElementById('tester');
    TESTER.style.visibility = 'visible';
    Plotly.newPlot( TESTER, [{
      x : x,
      y : data
    }], {
      margin: { t: 0}
    });
    var that = this;
    this.$el = $(`<p>First Name: ${firstName} <br>Last Name: ${lastName} <br>Illness: ${illness} </p>`);
    //this.$el = $(`<p> First Name: ${firstName} \n Last Name: ${lastName}  \n Illness: ${illness}</p>`);
	  $("#but").empty();
    $("#but").append("<button id = b1 type = 'button'> Go Back </button>");
    document.getElementById("b1").addEventListener("click", function(){
      $("#but").empty();
      loc = mov;
      document.getElementById("head").innerHTML = "home";
      TESTER.style.visibility = 'hidden';
      render();
    });
    document.getElementById("ubar").innerHTML = "Click graph to update";
    TESTER.addEventListener("click", function(){
      render();                                                   
    });
  };
  
  this.generateEl();
}


var createPerson = function(yourname, mov){
  var person = new clickablePerson(yourname, mov);
  $("#boards").append(person.$el);
}

var createPeople = function(firstName, lastName, illness, mov, data){
  var peps = new People(firstName, lastName, illness, mov, data);
  $("#boards").append(peps.$el);
}


var addPerson = function(){
  count++;
  var thing = "person";
  thing += count; //add person number to end so it has a unique name
  var address = "/".concat(thing); //set up in style /person#
  var a = document.getElementById("firstName").value;
  var n = document.getElementById("lastName").value;
  var i = document.getElementById("illness").value;
  //var t = `{firstName: "${b}",`.concat(` threadAddress: "${address}", `,`threadName: "${n}"}`); //this is just for debugging
  //t = JSON.stringify(t);
  //console.log(t);
  db.ref(loc).child(thing).set({personName: a, personAddress: address, docName: doc}); //create person and add to database
  var k = "/people";
  
  k = k.concat("/", thing);
  db.ref(k).child("Data1").set({firstName: a, lastName: n, illness: i}); //add Data 1 to the patient
  $("#but").empty(); //reset button
  $("#but").append("<button id = b1 type = 'button'> Add patient </button>");
  document.getElementById("b1").addEventListener("click", addPatientBut);
  
}


var addPatientBut = function(){ //add create thread button
  $("#but").empty();
  $("#but").append("<input id = 'firstName' type = 'text'> First Name </input>");
  $("#but").append("<input id = 'lastName' type = 'text'> Last Name</input>");
  $("#but").append("<input id = 'illness' type = 'text'> Illness</input>");
  $("#but").append("<button id = 'b2' type = 'button'> enter </button>");
  document.getElementById("b2").addEventListener("click", addPerson);
}

function searchDoc(){
  db.ref(loc).on("value", function(snap){
    console.log("searchDoc");
    $("#boards").empty();
    stuff = snap.val();
    for(var id in stuff){
      let first = stuff[id].firstName;
      let last = stuff[id].lastName;
      let pword = stuff[id].password;
      let mov = "/home";
      var fname = document.getElementById("firstName").value;
      var lname = document.getElementById("lastName").value;
      var password = document.getElementById("password").value;
      console.log(fname);
      console.log(first);
      if(fname == first && lname == last && pword == password){
        loc = mov;
        doc = first + " " + last;
        document.getElementById("head").innerHTML = "home";
        render();
        return 0;
      }
    }
    alert("Try again");
    render();
  },
function (errorObject) {
  console.log("The read failed: " + errorObject.code);
}); 
}

function render(){
  var data = "";
  count = 0;
  console.log("render");
  console.log(loc);
  db.ref(loc).on("value", function(snap){
    $("#boards").empty();
    stuff = snap.val();
    console.log(stuff);
    for(var id in stuff){
        //count++;
        if(loc === "/home"){
          console.log("home");//show available boards
          console.log(stuff[id]);
          count = stuff[id].personAddress.split("person").pop();
          let yourname = stuff[id].personName;
          let docName = stuff[id].docName;
          let mov = "/people".concat(stuff[id].personAddress);
          if(docName == doc){
            createPerson(yourname, mov);
          }
       }
	   else if(loc.startsWith("/people")){ 
          console.log("people");
          console.log(stuff[id]);
          let first = stuff[id].firstName;
		      let last = stuff[id].lastName;
		      let ill = stuff[id].illness;
          let mov = "/home";
          var fullName = first + last;
          var place = "/dataStore/";
          place += fullName;
  
          db.ref(place).on("value", function(snap){
            console.log("WENT INTO DATA")
            stuff = snap.val();
            for(var id in stuff){
              data += stuff[id].data;
            }
          });
         data = data.replace("[", "");
         data = data.replace("]", ",");
         data = data.split(",");
       
         var irep = 0; //integer representation holder
         var realData = [];
          for(var i = 0; i < data.length; i = i + 1){//for loop around all the elements of the array
            
            if(data[i] < 10 && data[i+1] > 10){
              irep = data[i] << 8 | data[i+1]; //only look at last 4 bits of each char
              realData.push(irep);
            }
            
            irep = 0;
          }
         
       /*
       for(var i = 0; i < data.length; i++){
         irep = data[i].charCodeAt(data[i].length - 1);
         data[i] = irep;
       }
       */
        
         console.log("DAAAAATTTTAAA");
          console.log(realData);
          //count = stuff[id].personAddress.split("person").pop();
          createPeople(first, last, ill, mov, realData);
       }
     else if(loc.startsWith("/doctors")){
          $("#but").empty();
          $("#but").append("<input id = 'firstName' type = 'text'> First Name </input><br>");
          $("#but").append("<input id = 'lastName' type = 'text'> Last Name</input><br>");
          $("#but").append("<input id = 'password' type = 'text'> Password</input><br>");
          $("#but").append("<button id = 'b2' type = 'button'> enter </button>");
          document.getElementById("b2").addEventListener("click", searchDoc.bind(Window));
     }
      }
    },
function (errorObject) {
  console.log("The read failed: " + errorObject.code);
}); 
}

$(document).ready(function(){
  render();
  
  /*var provider = new firebase.auth.GoogleAuthProvider();
    firebase.auth().signInWithPopup(provider).then(function(result) {
    // This gives you a Google Access Token. You can use it to access the Google API.
    var token = result.credential.accessToken;
    // The signed-in user info.
    user = result.user;
    console.log(user);
	console.log(user.displayName);
	$("#bot").append(`<h1>Welcome ${user.displayName}</h1>`);
  });*/
});




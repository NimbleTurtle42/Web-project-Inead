<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "gestionlibrairie";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);

// Check if the connection was successful and change the color of the led according to it.
if ($conn->connect_error) {
    echo 
    '<script type="text/JavaScript"> 
        document.getElementById("led").className ="led-red";
        document.getElementById("led").title="Disconnected from data base";
    </script>';
    
    // DEBUG : FIND OUT THE REASON FOR FAILED CONNECTION
    //echo '<p style="color:red">Erreure de connexion à la base de donnée: '. $conn->connect_error;
           
}
else {
    echo 
        '<script type="text/JavaScript"> 
            document.getElementById("led").className = "led-green";
            document.getElementById("led").title="Connected to the data base";
        </script>';
}
?>
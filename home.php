<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="description" content="Librairy SGBD">
        <meta name="keywords" content="Librairy, SGBD, management, books">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Librairy Manager - home</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="stylesheets/common.css">
        <link rel="stylesheet" href="stylesheets/home.css">
    </head>

    <body>
        <header class="heading">
            <h1 class="headertitle">Library DB</h1>
            <div class="status">
                <p>Data base status :</p>
                <div id= "led" title="You shouldn't be able to see this title"></div>              
            </div>
        </header>
        <main>
            <h1 id="maintitle">The <span style="color: cyan;">librairy</span></h1>
            <div id="dbcontainer">
                <div class =dbcontainers id="dbcontainer1">
                    <h3>Livre</h3>
                    <img src="img/livre.PNG" alt="pictogramme livre" class="databasespicto">
                    <button type="button" class="btn btn-light" title="To Livre db" onclick="window.location.href='db.php?db=livre'">Access data base</button>
                </div>
                <div class =dbcontainers id="dbcontainer2">
                    <h3>Commander</h3>
                    <img src="img/commande.PNG" alt="pictogramme commande"  class="databasespicto">
                    <button type="button" class="btn btn-light" title="To Commander db" onclick="window.location.href='db.php?db=commander'">Access data base</button>
                </div>
                <div class =dbcontainers id="dbcontainer3">
                    <h3>Fournisseur</h3>
                    <img src="img/fournisseur.PNG" alt="pictogramme fournisseur" class="databasespicto">
                    <button type="button" class="btn btn-light" title="To Fournisseur db" onclick="window.location.href='db.php?db=fournisseur'">Access data base</button>
                </div>
            </div>
        </main>
    </body>
</html>
<?php
    include 'sql.php';
    $conn->close();
?>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Gestion de librairie - Data base view</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="stylesheets/common.css">
        <link rel="stylesheet" href="stylesheets/db.css">
    </head>
    <body>
        <header class="heading">
            <a href="home.php" class="invilink" title="To Home page">
                <h1 class="headertitle">Library DB</h1>
            </a>
            <div class="status">
                <p>Data base status :</p>
                <div id= "led" title="You shouldn't be able to see this title"></div>
            </div>
        </header>
        <main>
            <h1 id="maintitle">The <span style="color: cyan;">librairy</span></h1>
            <nav class="listctnr">
                <h3>Databases : </h3>
                <ul class="dblist">
                    <li>
                        <a href="db.php?db=livre" class="invilink" title="To Livre db">
                            <img src="img/livre.PNG" alt="pictogramme lien vers base de donné Livre" class="databaseslinks">
                        </a>
                    </li>
                    <li>  
                        <a href="db.php?db=commander" class="invilink" title="To Commander db">
                            <img src="img/commande.PNG" alt="pictogramme lien vers base de donné Commander" class="databaseslinks" >
                        </a>
                    </li>
                    <li>                        
                        <a href="db.php?db=fournisseur" class="invilink" title="To Fournisseur db">
                            <img src="img/fournisseur.PNG" alt="pictogramme lien vers base de donné Fournisseur" class="databaseslinks">
                        </a>
                    </li>
                </ul>
            </nav>
            <?php echo '<h2 id="dbtitle">'. $_GET["db"]. ' data table</h2>' ?>

            <?php
            //connects to the database
            include 'sql.php'; 

            // Select the correct database depending on the data sent through the $_GET methode
            switch ($_GET['db']) {
                case 'livre':
                    $sql = "SELECT * FROM gestionlibrairie.livre";
                    break;

                case 'commander':
                    $sql = "SELECT * FROM gestionlibrairie.commander";
                    break;

                case 'fournisseur':
                    $sql = "SELECT * FROM gestionlibrairie.fournisseur";
                    break;

                default:
                    $sql = "SELECT * FROM gestionlibrairie.livre";
                    break;
            } ;

            // Store the answer to the query from the database
            $result = $conn->query($sql);
            $conn->close();
            ?>
            <div class="defaultcontainer">
                <table id=dbtable>
                    <?php
                        /*Creates the titles of the table */
                        echo '<tr>';
                        foreach ($result->fetch_fields() as $key => $value) {
                            echo '<th>'.$value->name. '</th>';
                            $columnnames[] = array (
                                $key => $value->name
                            );
                        }
                        echo '</tr>';

                        /*Creates the rows of the table */
                        while ($row = $result->fetch_assoc()) {
                            echo '<tr>';
                            foreach ($columnnames as $colname) {                                
                                echo '<td>'. $row[implode($colname)]. '</td>';
                            }
                            echo '</tr>';
                        }
                    ?>
                </table>
            </div>
        </main>
    </body>
</html>


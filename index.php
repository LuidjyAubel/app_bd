<?php
$DataBase = mysqli_connect ("mysql-aubel-luidjy.alwaysdata.net",  "230677_cdi", "ClasseSio1");
mysqli_select_db($DataBase, "aubel-luidjy_cdi");
$Requete = "select * from type_livre;";
$Resultat = mysqli_query($DataBase, $Requete) or die (mysqli_error($DataBase));
while ($ligne = mysqli_fetch_array($Resultat)){
    echo "<tr>\n";
    echo "<td>".$ligne['id']."</td>\n";
    echo "<td>".$ligne['libelle']."</td>\n";
    echo "</tr>\n";
}
mysqli_free_result($Resultat);
mysqli_close($DataBase);


?>
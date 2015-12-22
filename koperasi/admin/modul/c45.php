<?php
switch($_GET["act"]){
    default:
        include "pohon_keputusan.php";
    break;
    case "mining";
        
        include "menu_c45.php";
        // timer_start();
        include "function/miningPrePruningC45.php";
    populateDb(); 
    miningC45('', '');
    generateRuleFinalPrePruning();
insertRuleC45PrePruning();
        // $waktu = timer_stop(3);
        echo "<p>Proses Mining Selesai</p>";
    break;
}
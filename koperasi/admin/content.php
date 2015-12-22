<?php
include "../config/koneksi.php";
include "../config/library.php";
include "../config/fungsi_indotgl.php";
include "../config/hitungWaktu.php";

// Bagian Home
if ($_GET["module"]=='home'){
    echo "<h2><center>Aplikasi Pohon Keputusan C4.5</center></h2>
    <table width='100%'>
        <tr>
            <td>
                <h2 align='center'>
                    <br>
                </h2>
            </td>
        </tr>
    </table>";


$result = mysql_query("SELECT `COLUMN_NAME` 
FROM `INFORMATION_SCHEMA`.`COLUMNS` 
WHERE `TABLE_SCHEMA`='dbminingx' 
    AND `TABLE_NAME`='data_anggota'");
if (!$result) {
    echo 'Could not run query: ' . mysql_error();
    exit;
}
if (mysql_num_rows($result) > 0) {
    while ($row = mysql_fetch_assoc($result)) {
        echo $row['COLUMN_NAME']."<br>";
    }
}
}

// Modul Data Nasabah
elseif ($_GET["module"]=='data_anggota'){
    include "modul/data_anggota.php";
}

// Modul C4.5
elseif ($_GET["module"]=='c45'){
    include "modul/c45.php";
}
// Perhitungan C4.5
elseif ($_GET["module"]=='perhitungan_c45'){
    include "modul/perhitungan_c45.php";
}

// Modul Lain-Lain
elseif ($_GET["module"]=='about'){
    include "modul/about.php";
}

// Modul Lain-Lain
elseif ($_GET["module"]=='bantuan'){
    include "modul/bantuan.php";
}

// Modul Penentu Keputusan
elseif ($_GET["module"]=='prediksi'){
    include "modul/prediksi.php";
}

// Modul Lihat Nilai
elseif ($_GET["module"]=='lihat_nilai'){
    include "modul/lihat_nilai.php";
}

// Logout
elseif ($_GET["module"]=='logout'){
	include "admin/login.php";
    session_destroy();
    header('location:../admin/media.php?"module"=login');
}

else{
    echo "<p><b>MENU BELUM ADA</b></p>";
}
?>
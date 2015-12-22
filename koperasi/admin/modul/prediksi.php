<?php
switch($_GET["act"]){
    default:
        echo "<h2>Prediksi</h2>";
        include "form_prediksi.php";
		echo " <p><a href=./aksi.php?module=prediksi&act=hapus_semua_prediksi>Hapus Semua Prediksi</a></p>";
        echo "<table bgcolor='#81b9db' border='1' cellspacing='0' cellspading='0'>
            <tr>
                <th>no</th>
                <th>no anggota</th>
                <th>nama anggota</th>
                <th>penghasilan</th>
                <th>status</th>
                <th>status rumah</th>
                <th>pinjaman</th>
                <th>pekerjan</th>
                <th>kelancaran</th>
           </tr>";

    $sql=mysql_query('SELECT * FROM data_prediksi ORDER BY id');
    $warna1 = '#ffffff';
    
    $warna  = $warna1; 
    $no = 1;
    while ($data=mysql_fetch_array($sql)){
        
        echo " <tr bgcolor='$warna'>
                   <td>$no</td>
                   <td>$data[no_anggota]</td>
                   <td>$data[nama_anggota]</td>
                   <td>$data[penghasilan]</td>
                   <td>$data[status]</td>
                   <td>$data[status_rumah]</td>
                   <td>$data[pinjaman]</td>
                   <td>$data[pekerjaan]</td>
                   <td>$data[keputusan_c45]</td>
               </tr>";
    $no++;
    }
    echo"</table>";
    break;
    
}
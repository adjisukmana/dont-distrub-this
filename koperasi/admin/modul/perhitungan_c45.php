<?php
echo "<h2>Tabel Perhitungan Dengan Menggunakan Algoritma C45</h2>";
    echo " <table width='100%' border='1' cellspacing='0' cellspading='0'>
           <tr style='text-transform:uppercase; background:#000; color:#fff;'>
               <th>No</th> 
			   <th>Att Gain Ratio Max</th>
               <th>Atribut</th>
               <th>Nilai Atribut</th>
               <th>Total Kasus</th>
               <th>Jumlah Ya</th>
               <th>Jumlah Tidak</th>
               <th>Entropy</th>
               <th>Gain</th>
			</tr>";
           
    
    $sql=mysql_query("SELECT * FROM iterasi_c45");
    while ($data=mysql_fetch_array($sql)){
        echo "<tr bgcolor='$warna'>
               <td>$data[iterasi]</td>
               <td>$data[atribut_gain_ratio_max]</td>
			   <td>$data[atribut]</td>
               <td>$data[nilai_atribut]</td>
               <td>$data[jml_kasus_kelancaran]</td>
               <td>$data[jml_kasus_ya]</td>
               <td>$data[jml_kasus_tidak]</td>
               <td>$data[entropy]</td>
               <td>$data[inf_gain]</td>";
        }
        echo "</tr>";
    echo"</table>";
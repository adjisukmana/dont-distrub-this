<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
</head>
<?php
switch($_GET["act"]){
    default:
        echo "<h2>Data Kasus</h2>";
        include "form_data_anggota.php";
		echo "<form action='' method='post' enctype='multipart/form-data' name='form1' id='form1''>
                  <p>Ambil File .csv : 
                  <input name='csv' type='file' id='csv' />
                  <input type='submit' name='Submit' value='Submit' /></p >
                </form>";
        
                if ($_FILES["csv"]["size"] > 0) {

                    //get the csv file
                    $file = $_FILES["csv"]["tmp_name"];
                    $handle = fopen($file,"r");
                    
                    //loop through the csv file and insert into database
                    mysql_query("TRUNCATE data_anggota");
                    do {
                        if ($data[0]) {
                            mysql_query("INSERT INTO data_anggota (no_anggota, nama_anggota, penghasilan, status, status_rumah, pinjaman, pekerjaan, kelancaran) VALUES
                                (
                                    '".addslashes($data[0])."',
                                    '".addslashes($data[1])."',
                                    '".addslashes($data[2])."',
                                    '".addslashes($data[3])."',
                                    '".addslashes($data[4])."',
                                    '".addslashes($data[5])."',
                  									'".addslashes($data[6])."',
                  									'".addslashes($data[7])."'
                                )
                            ");
                        }
                    } while ($data = fgetcsv($handle,1000,",","'"));
                    //

                    //redirect
                    echo "<script>alert('Data berhasil diinput!'); document.location.href='media.php?module=data_anggota';</script>\n";

                }
        echo "<p><a href='media.php?module=data_anggota&act=lihat_data'>Lihat Data Kasus</a></p>";

    break;
    case "lihat_data";
        echo " <p><center><a href=./aksi.php?module=data_anggota&act=hapus_semua_data_anggota>Hapus Semua Data</a></center></p>";
        echo "<table bgcolor='#81b9db' border='1' cellspacing='0' cellspading='0'>
            <tr>
				<th>No</th>
				<th>no anggota</th>
                <th>nama anggota</th>
				<th>penghasilan</th>
                <th>status</th>
                <th>status rumah</th>
                <th>pinjaman</th>
				<th>pekerjaan</th>
				<th>kelancaran</th>
                <th>Opsi</th>
           </tr>";

    $sql=mysql_query('SELECT * FROM data_anggota ORDER BY id');
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
				   <td>$data[kelancaran]</td>
                   <td><a href=?module=data_anggota&act=edit_data_anggota&id=$data[id]>Edit</a> |
                   <a href=./aksi.php?module=data_anggota&act=hapus_data_anggota&id=$data[id]>Hapus</a>
                   </td>
               </tr>";
    $no++;
    }
    echo"</table>";
    echo "<p><a href=javascript:history.back(-1)>Kembali</a></p>";
    break;
    
    case "edit_data_anggota";
        echo "<h2>Data Anggota &#187; Edit Data Anggota</h2>";
        include "form_edit_data_anggota.php";
    break;
    
}
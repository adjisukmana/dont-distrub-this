<?php
function deleteAllDb()
{
    mysql_query("TRUNCATE variabel");
    mysql_query("TRUNCATE data_anggota");
    mysql_query("TRUNCATE data_prediksi");
    
    mysql_query("TRUNCATE perhitungan_c45");
    mysql_query("TRUNCATE pohon_keputusan");
    mysql_query("TRUNCATE rule_pohon_keputusan");

    mysql_query("TRUNCATE rule_prediksi");
    mysql_query("TRUNCATE data_variabel_prediksi");
}

// session_start();
include "../config/koneksi.php";
include "../config/library.php";

$module=$_GET['module'];
$act=$_GET['act'];

// hapus data Nasabah per item
if ($module=='data_anggota' AND $act=='hapus_data_anggota'){
    mysql_query("DELETE FROM data_anggota WHERE id='$_GET[id]'");
    echo "<script>alert('Data berhasil dihapus!'); document.location.href='media.php?module=data_anggota';</script>\n";
}

// hapus semua data Nasabah
elseif ($module=='data_anggota' AND $act=='hapus_semua_data_anggota'){
	mysql_query("TRUNCATE `data_anggota`");
    deleteAllDb();
    echo "<script>alert('Data berhasil dihapus!'); document.location.href='media.php?module=data_anggota';</script>\n";
}

// hapus semua data Prediksi
elseif ($module=='prediksi' AND $act=='hapus_semua_prediksi'){
	mysql_query("TRUNCATE `data_prediksi`");
    
    echo "<script>alert('Data berhasil dihapus!'); document.location.href='media.php?module=prediksi';</script>\n";
}


// Input Data Nasabah
elseif ($module=='data_anggota' AND $act=='input'){
    mysql_query("INSERT INTO data_anggota VALUES('',
        '$_POST[no_anggota]',
        '$_POST[nama_anggota]',
        '$_POST[penghasilan]',
        '$_POST[status]',
        '$_POST[status_rumah]',
        '$_POST[pinjaman]',
        '$_POST[pekerjaan]',
        '$_POST[kelancaran]'
        )");
    echo "<script>alert('Data berhasil diinput!'); document.location.href='media.php?module=data_anggota';</script>\n";
}

// Update Data Nasabah
elseif ($module=='data_anggota' AND $act=='update_data_anggota'){
	mysql_query("UPDATE data_anggota SET 
        no_anggota = '$_POST[no_anggota]',
        nama_anggota = '$_POST[nama_anggota]',
        penghasilan = '$_POST[penghasilan]',
        status = '$_POST[status]',
        status_rumah = '$_POST[status_rumah]',
        pinjaman = '$_POST[pinjaman]',
        pekerjaan = '$_POST[pekerjaan]',
        kelancaran = '$_POST[kelancaran]'
        WHERE id      = '$_POST[id]'");
    echo "<script>alert('Data berhasil diupdate!'); document.location.href='media.php?module=data_anggota';</script>\n";
}

// Hapus Semua Data Pohon Keputusan C45
elseif ($module=='c45' AND $act=='hapus_pohon_keputusan'){
	mysql_query("TRUNCATE `pohon_keputusan`");
	mysql_query("TRUNCATE `rule_pohon_keputusan`");
    mysql_query("DELETE FROM rule_prediksi where pohon = 'C45'");
    header('location:media.php?module=c45');
}

// Hapus Semua Data Penentu Keputusan
elseif ($module=='penentu_keputusan' AND $act=='delete_data_penentu_keputusan'){
	mysql_query("TRUNCATE `data_prediksi`");
    header('location:media.php?module=penentu_prediksi');
}

// Hapus Semua Data Penentu Keputusan per Item
if ($module=='penentu_keputusan' AND $act=='hapus'){
  mysql_query("DELETE FROM data_prediksi WHERE id='$_GET[id]'");
  header('location:media.php?module='.$module);
}

// Hapus Semua Data Kinerja
elseif ($module=='kinerja' AND $act=='hapus_data_kinerja'){
	mysql_query("TRUNCATE `data_keputusan_kinerja`");
    header('location:media.php?module=kinerja');
}

// Hapus Seluruh Database
elseif ($module=='lain-lain' AND $act=='delete_all_db'){
    deleteAllDb();
    header('location:media.php?module=lain-lain');
}

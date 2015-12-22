<?php
include "koneksi.php";
mysql_query("TRUNCATE data_variabel_prediksi");

// buat variabel baru yg berisi data yg di post-kan
$no_anggota = $_POST['no_anggota'];
$nama_anggota = $_POST['nama_anggota'];
$penghasilan = $_POST['penghasilan'];
$status = $_POST['status'];
$status_rumah = $_POST['status_rumah'];
$pinjaman = $_POST['pinjaman'];
$pekerjaan = $_POST['pekerjaan'];

// masukkan variabel pada array
$array2 = array("penghasilan" => "$penghasilan",
        "status" => "$status",
        "status_rumah" => "$status_rumah",
        "pinjaman" => "$pinjaman",
        "pekerjaan" => "$pekerjaan"
        );

$sqlSelectDistinctVariabel = mysql_query("SELECT variabel FROM pohon_keputusan");
while($rowSelectDistinctVariabel = mysql_fetch_array($sqlSelectDistinctVariabel)) {
    if (!empty($rowSelectDistinctVariabel)) {
        foreach ($array2 as $variabel_array => $nilai_variabel_array) {
            // jika variabel pada pohon sama dgn variabel yg ada di array (variabel yg di post-kan) maka insert variabel dan nilai variabel pada db
            if ($rowSelectDistinctVariabel['variabel'] == $variabel_array) {
                mysql_query("INSERT INTO data_variabel_prediksi VALUES('', '$variabel_array', '$nilai_variabel_array')");
            }
        }
    }
}

$arrayPenentuKelancaran = array(); // buat array baru
// ambil variabel dan nilai variabel pada db data penentu keputusan
$sqlDataPenentuKelancaran = mysql_query("SELECT variabel, nilai_variabel FROM data_variabel_prediksi");
while($rowDataPenentuKelancaran = mysql_fetch_array($sqlDataPenentuKelancaran)) {
    // ambil variabel dan nilai variabel pada db rule_penentu_keputusan
    $sqlRulePenentuKelancaran = mysql_query("SELECT id, variabel, nilai_variabel FROM rule_prediksi where pohon = 'C45'");
    while($rowRulePenentuKelancaran = mysql_fetch_array($sqlRulePenentuKelancaran)) {
        if (!empty($rowRulePenentuKelancaran)) {
            // jika variabel pada db data_penentu_keputusan sama dengan variabel pada db rule_penentu_keputusan
            if ($rowRulePenentuKelancaran['variabel'] == $rowDataPenentuKelancaran['variabel']) {
                // jika nilai variabel pada db data_penentu_keputusan sama dengan nilai variabel pada db rule_penentu_keputusan
                if ($rowRulePenentuKelancaran['nilai_variabel'] == $rowDataPenentuKelancaran['nilai_variabel']) {
                    // set nilai id, cocok dan masukkan pada array
                    $arrayPenentuKelancaranTemp['id'] = $rowRulePenentuKelancaran['id'];
                    $arrayPenentuKelancaranTemp['cocok'] = "Ya";
                    $arrayPenentuKelancaran[] = $arrayPenentuKelancaranTemp;
                } elseif ($rowRulePenentuKelancaran['nilai_variabel'] !== $rowDataPenentuKelancaran['nilai_variabel']) {
                    // set nilai id, cocok dan masukkan pada array
                    $arrayPenentuKelancaranTemp['id'] = $rowRulePenentuKelancaran['id'];
                    $arrayPenentuKelancaranTemp['cocok'] = "Tidak";
                    $arrayPenentuKelancaran[] = $arrayPenentuKelancaranTemp;
                }
            }
        }
    }
}

foreach ($arrayPenentuKelancaran as $arrayPenentuKelancaranUpdate) {
    // update nilai cocok dari array sebelumnya
    mysql_query("UPDATE rule_prediksi SET cocok = '$arrayPenentuKelancaranUpdate[cocok]' where id = $arrayPenentuKelancaranUpdate[id]");
}

// queri utk mengambil keputusan dan id rule berdasarkan nilai variabel yg cocok (nilai variabel rule == nilai variabel yg dipost-kan)
$sqlKelancaran = mysql_query("SELECT distinct id_rule, kelancaran FROM `rule_prediksi` WHERE pohon = 'C45' AND cocok = 'Ya' and id_rule not in (select distinct id_rule from `rule_prediksi` where pohon = 'C45' AND cocok = 'Tidak')");
$rowKelancaran = mysql_fetch_array($sqlKelancaran);
if (!empty($rowKelancaran)) {
    $kelancaran = "$rowKelancaran[kelancaran]";
    $idRule = "$rowKelancaran[id_rule]";

    if ($kelancaran == 'Ya') {
        // insert data kelancaran pada db
        mysql_query("INSERT INTO data_prediksi VALUES('',
            '$no_anggota',
            '$nama_anggota',
            '$penghasilan',
            '$status',
            '$status_rumah',
            '$pinjaman',
            '$pekerjaan',
            '$kelancaran',
            '$idRule')
        ");
		
		
        echo "<script>document.location.href='../../media.php?module=prediksi';</script>\n";
    } elseif ($kelancaran == 'Tidak') {
        // insert data kelancaran pada db
        mysql_query("INSERT INTO data_prediksi VALUES('',
            '$no_anggota',
            '$nama_anggota',
            '$penghasilan',
            '$status',
            '$status_rumah',
            '$pinjaman',
            '$pekerjaan',
            '$kelancaran',
            '$idRule')
        ");
		echo "<script>document.location.href='../../media.php?module=prediksi';</script>\n";
}}
<?php
$query = mysql_query("SELECT * FROM data_anggota WHERE id='$_GET[id]'");
$data = mysql_fetch_array($query);

echo "<form method=POST action=./aksi.php?module=data_anggota&act=update_data_anggota>
      <input type=hidden name=id value=$data[id]>
      <table>
        <tr>
        <td colspan=2><b><center>Edit Data Anggota</center></b></td>
        </tr>

        <tr>
        <td>No Anggota</td>        
        <td>: 
            <input name='no_anggota' value='$data[no_anggota]' type='text'>
        </td>
        </tr>

        <tr>
        <td>Nama Anggota</td>        
        <td>: 
             <input name='nama_anggota' value='$data[nama_anggota]' type='text'>
        </td>
        </tr>

        <tr>
		<td>Penghasilan</td>        
		<td>: 
    		<select name='penghasilan' type='text'>
    		<option value='>=4jt'>>=4jt</option>
    		<option value='<4jt'><4jt</option>
        </select>
		</td>
		</tr>

        <tr>
		<td>Status</td>        
		<td>: 
 		   <select name='status' type='text'>
  		   <option value='menikah'>Menikah</option>
    	   <option value='belum menikah'>Belum Menikah</option>
    	</select>
		</td>
		</tr>

       	<tr>
		<td>Status Rumah</td>        
		<td>: 
			<select name='status_rumah' type='text'>
			<option value='pribadi'>Pribadi</option>
			<option value='Sewa'>Sewa</option>	
        </select>
		</td>
		</tr>

        <tr>
		<td>Pinjaman</td>        
		<td>: 
    		<select name='pinjaman' type='text'>
    		<option value='>4jt'>>4jt</option>
    		<option value='3jt-4jt'>3jt-4jt</option>
    		<option value='<3jt'><3jt</option>
        </select>
		</td>
		</tr>


		<tr>
		<td>Pekerjaan</td>        
		<td>: 
    		<select name='pekerjaan' type='text'>
    		<option value='pns'>pns</option>
    		<option value='swasta'>swasta</option>
    		<option value='pedagang'>pedagang</option>
    		<option value='buruh'>buruh</option>
        </select>
		</td>
		</tr>
        
        <tr>
        <td><b>Kelancaran<b></td>        
        <td>: 
            <select name='kelancaran' type='text'>
            <option value='$data[kelancaran]' selected='selected'>$data[kelancaran]</option>
            <option value='Tidak'>Tidak</option>
            <option value='Ya'>Ya</option>
            </select>
        </td>
        </tr>

        <tr>
        <td colspan=2>
        <input type=submit value=Simpan><input type=button value=Batal onclick=self.history.back()>
        </td>
        </tr>
  </table>
  </form>";
?>
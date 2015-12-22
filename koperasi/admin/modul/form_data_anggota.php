<?php
echo "
<form method=POST action='./aksi.php?module=data_anggota&act=input' align='center'>
	<table>
        <tr>
        <td colspan=2><b><center>Data Kasus</center></b></td>
        </tr>";

        include "form_anggota.html";

        echo "<tr>
        <td><b>Kelancaran<b></td>        
        <td>: 
            <select name='kelancaran' type='text'>
			<option value='Ya'>Ya</option>
            <option value='Tidak'>Tidak</option>
            </select>
        </td>
        </tr>

		<tr>
        <td colspan=2>
		<input type=submit value=Input>
		</td>
        </tr>
    </table>
</form>";
?>
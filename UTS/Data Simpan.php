<?php

 $date = date_default_timezone_set("Asia/Jakarta");
 $waktu = date('d M Y H:i:s');
 $wilayah  = $_POST['nama_wilayah']; 
 $positif = $_POST['jumlah_positif'];
 $dirawat  = $_POST['jumlah_dirawat']; 
 $sembuh = $_POST['jumlah_sembuh']; 
 $meninggal = $_POST['jumlah_meninggal'];
 $operator = $_POST['nama_operator'];
 $nim = $_POST['nim_mahasiswa'];
 

 $db = "<center> Data pemantauan Covid19 wilayah $wilayah
 		<br>Per $waktu
 		<br>$operator / $nim
 		<br><br>
 		<table border='1'>
            <tr>
                <th> Positif </th>
                <th> Dirawat </th>
                <th> Sembuh </th>
                <th> Meninggal </th>
            </tr>
  
 
  			<tr>
               <td>$positif</td>
               <td>$dirawat</td>
               <td>$sembuh</td>
               <td>$meninggal</td>
     	    </tr>
 
 		</table>
 		</center>";

$data = fopen("db.html", "a");
fwrite($data, $db);
fclose($data);

echo "<script>alert('Data Tersimpan');history.go(-1);</script>";

?>



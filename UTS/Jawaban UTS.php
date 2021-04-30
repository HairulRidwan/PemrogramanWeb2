<!DOCTYPE html>
<html>
<head>
	<title>JAWABAN UTS</title>
</head>
<body>

	<header>
		<h2><center><b>FORM DATA PEMANTAUAN COVID-19</b></center></h2>
	</header>

	<form method="post" action="data_simpan.php">
		<center><table>
			<tr><td>Nama Wilayah </td><td>
				<select name="nama_wilayah">
					<option value="DKI Jakarta">DKI Jakarta</option>
					<option value="Jawa Barat">Jawa Barat</option>
					<option value="Banten">Banten</option>
					<option value="Jawa Tengah">Jawa Tengah</option>
				</select>
				</td></tr>
			<tr><td>Jumlah Positif </td><td><input type="text" name="jumlah_positif"></td></tr>
			<tr><td>Jumlah Dirawat </td><td><input type="text" name="jumlah_dirawat"></td></tr>
			<tr><td>Jumlah Sembuh  </td><td><input type="text" name="jumlah_sembuh"></td></tr>
			<tr><td>Jumlah Meninggal </td><td><input type="text" name="jumlah_meninggal"></td></tr>
			<tr><td>Nama Operator   </td><td><input type="text" name="nama_operator"></td></tr>
			<tr><td>NIM Mahasiswa   </td><td><input type="text" name="nim_mahasiswa"></td></tr>
			<tr><td><button type="submit" name="simpan" value="simpan">SIMPAN</button></td></tr>
		</table></center>
	</form>
		
</body>
</html>
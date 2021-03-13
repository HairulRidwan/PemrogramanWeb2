<!DOCTYPE html>
<html>
<head>
	<title>Membuat Kalkulator Sederhana Dengan HTML, PHP, dan CSS3</title>
	<link rel="stylesheet" type="text/css" href="kalkulator-style.css">
</head>
<style>
h2{
	color:crimson;
}
h3{
	text-align: center;
}
td{
	text-align: center;
}
</style>
<body>
	<?php 
	if(isset($_POST['hitung'])){
		$bil1 = $_POST['bil1'];
		$bil2 = $_POST['bil2'];
		$operasi = $_POST['operasi'];
		switch ($operasi) {
			case 'tambah':
				$hasil = $bil1+$bil2;
			break;
			case 'kurang':
				$hasil = $bil1-$bil2;
			break;
			case 'kali':
				$hasil = $bil1*$bil2;
			break;
			case 'bagi':
				$hasil = $bil1/$bil2;
			break;			
		}
	}
	?>
	<div class="kalkulator">
		<h3 class="judul" align="center">Buatlah tampilan dibawah ini!</h3>
		<form method="post" action="Pert2_latihan3.php">			
		<table align="center">
		<tr>
		<td><h2>Nilai I</h2></td>
		<td></td>
		<td><h2>Nilai II</h2></td>
		<td></td>
		<td><h2>Hasil</h2></td>
		</tr>
		<tr>
			<td>
			<input type="text" name="bil1" class="bil" autocomplete="off" placeholder="Bilangan Pertama">
			</td>
			<td>
			<select class="opt" name="operasi">
				<option value="tambah">+</option>
				<option value="kurang">-</option>
				<option value="kali">x</option>
				<option value="bagi">/</option>
			</select>
			</td>
			<td>
			<input type="text" name="bil2" class="bil" autocomplete="off" placeholder="Bilangan Kedua">
			</td>
			<td>
			<input type="submit" name="hitung" value="Hitung" class="tombol">											
			</td>
			<td>
			<?php if(isset($_POST['hitung'])){ ?>
				<input type="text" value="<?php echo $hasil; ?>" class="bil">
			<?php }else{ ?>
				<input type="text" value="0" class="bil">
			<?php } ?>
			</td>
		</tr>
		</table>
		</form>
	</div>
</body>
</html>
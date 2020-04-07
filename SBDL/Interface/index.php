<html>
	<head>
		<title>Halaman Index</title>
	</head>
	<body>
		<h1 align="center">SELAMAT DATANG</h1>
		<h2 align="center">Web Aplikasi Manajemen Surat</h3>
		<h3 align="center">Berikut adalah daftar surat masuk :</h3>
		<p align="center"><a href="tambah_surat.php">Tambah Surat Masuk</a></p>
		<table border="1" align="center" cellspacing="0" cellpadding="8">
			<tr>
				<td>No Surat</td>
				<td>No Urut</td>
				<td>Tanggal Surat</td>
				<td>Sifat</td>
				<td>Tanggal Terima</td>
				<td>Instansi</td>
				<td>Swasta</td>
				<td>Perihal</td>
				<td>Disposisi</td>
				<td>Lokasi</td>
				<td>Keterangan</td>
			</tr>
			<?php
				include 'koneksi.php';
				$query = mysqli_query($koneksi, "SELECT * FROM tabel_srt_masuk");
				while($data=mysqli_fetch_array($query)){
			?>
			<tr>
				<td><?= $data['No_Surat'];?></td>
				<td><?= $data['No_Urut'];?></td>
				<td><?= $data['Tgl_Surat'];?></td>
				<td><?= $data['Sifat'];?></td>
				<td><?= $data['Tgl_Terima'];?></td>
				<td><?= $data['Instansi'];?></td>
				<td><?= $data['Swasta'];?></td>
				<td><?= $data['Perihal'];?></td>
				<td><?= $data['Disposisi'];?></td>
				<td><?= $data['Lokasi'];?></td>
				<td><?= $data['Keterangan'];?></td>
			</tr>
			<?php
				}
			?>
		</table>
		<p align="center"><a href="">Keluar</a></p>
	</body>
</html>
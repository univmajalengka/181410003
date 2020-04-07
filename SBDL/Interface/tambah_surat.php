<html>
	<head>
		<title>Tambah Surat Masuk</title>
	</head>
	<body>
		<h1 align="center">Tambah Surat Masuk</h1>
		<form action="proses_tambah.php" method="POST">
			<table align="center">
				<tr>
					<td>No Surat</td>
					<td><input type="text" name="no_surat">
				</tr>
				<tr>
					<td>Tanggal Surat</td>
					<td><input type="date" name="tgl_surat">
				</tr>
				<tr>
					<td>Sifat</td>
					<td><input type="text" name="sifat">
				</tr>
				<tr>
					<td>Tanggal Terima</td>
					<td><input type="date" name="tgl_terima">
				</tr>
				<tr>
					<td>Instansi</td>
					<td><input type="text" name="instansi">
				</tr>
				<tr>
					<td>Swasta</td>
					<td><input type="text" name="swasta">
				</tr>
				<tr>
					<td>Perihal</td>
					<td><input type="text" name="perihal">
				</tr>
				<tr>
					<td>Disposisi</td>
					<td><input type="text" name="disposisi">
				</tr>
				<tr>
					<td>Lokasi</td>
					<td><input type="text" name="lokasi">
				</tr>
				<tr>
					<td>Keterangan</td>
					<td><input type="text" name="keterangan">
				</tr>
				<tr>
					<td><button type="submit">Tambah</button>
					<td><button href="index.php">Kembali</button>
				</tr>
			</table>
		</form>
	</body>
</html>
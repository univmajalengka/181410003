<?php
	
	include 'koneksi.php';
	
	$no_surat = $_POST['no_surat'];
	$tgl_surat = $_POST['tgl_surat'];
	$sifat = $_POST['sifat'];
	$tgl_terima = $_POST['tgl_terima'];
	$instansi = $_POST['instansi'];
	$swasta = $_POST['swasta'];
	$perihal = $_POST['perihal'];
	$disposisi = $_POST['disposisi'];
	$lokasi = $_POST['lokasi'];
	$keterangan = $_POST['keterangan'];
	
	$query = mysqli_query($koneksi, "INSERT INTO tabel_srt_masuk VALUES('$no_surat', '', '$tgl_surat', '$sifat', 'tgl_terima',
																		'$instansi', '$swasta', '$perihal', '$disposisi', '$lokasi', '$keterangan')");
	header("Location:index.php");
	
?>
<?php
	$host='localhost';
	$user='root';
	$pass='';
	$db='webphim';

	$link=new mysqli($host,$user,$pass,$db) or die('Lỗi kết nối');
	//Dong bo charset (collation)
	$link->query('set names utf8');

?>

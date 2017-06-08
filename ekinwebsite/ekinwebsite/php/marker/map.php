	<?php
$db_host = 'localhost';     //RDS Endpoint...
$db_username = 'root';
$db_pass = '';
$db_name = 'aracar'; 

$con=mysqli_connect($db_host,$db_username,$db_pass,$db_name);
/*

if (!$con) {
    die("Baglanti Basarisiz: " . mysqli_connect_error());
}
echo "Baglanti Basari1i";
*/

$sql_select="select *from maps where Marka_ID in(1,2,3)";
$sql_con=mysqli_query($con,$sql_select);

	$data=array();
	while($kayit=mysqli_fetch_assoc($sql_con))
	{
	
	
	$data[]= $kayit;
	
	
	
	}
	echo json_encode($data);





?>
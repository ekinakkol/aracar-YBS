<?php 
	include"baglan.php";   
    $db = mysqli_connect($dbHost,$dbUsername,$dbPassword,$dbName);
	$adi=$_POST['adi'];
	$sifre=$_POST['sifre'];
	$query = "SELECT Kullanici_Adi,sifre FROM uyeler  ";
	$sql_con=mysqli_query($db,$query);
if (isset($adi)&& isset($sifre)) {
	$hata ="";
	sleep(2);
	if(mysqli_num_rows($sql_con)>0)
{
	while($kayit=mysqli_fetch_assoc($sql_con))
	{
		if(($adi==$kayit['Kullanici_Adi'])&&($sifre == $kayit['sifre']))
		{
			
			  $hata="Giriş Başarılı";
			  echo '<script>window.location.href="../html/index2.html";</script>';
		}
		else if($adi == "")
		{
			  $hata="Kullanıcı Adınızı Girmediniz ";
		}
		else if(($adi!=$kayit['Kullanici_Adi'])||($sifre != $kayit['sifre']))
		{
			 $hata="Hatalı Kullanıcı veya Şifre ";
			
		}
	
}
}
else{
	echo "Kullanıcı Bulunamadı";
}
}
echo $hata;
 ?>


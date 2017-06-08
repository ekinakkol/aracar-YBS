<?php
    
   include"baglan.php";
    
	$term = $_GET['term'];
    $query = "SELECT * FROM marka WHERE Marka_Adi LIKE '%".$term."%' ORDER BY Marka_Adi ASC";
	$sql_con=mysqli_query($db,$query);
	
	$data=array();
    while ($row = mysqli_fetch_array($sql_con)) {
		
        $data[]=$row["Marka_Adi"];
	}
    echo json_encode($data);
?>
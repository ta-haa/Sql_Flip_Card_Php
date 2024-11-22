<style>
*{
  margin:0;
  padding:0;
}
.flip-card {
  background-color: transparent;
  width: 190px;
  height: 254px;
  perspective: 1000px;
  font-family: sans-serif;
  float:left;
  margin:0 50px 0 0;
}

.flip-card-inner {
  position: relative;
  width: 100%;
  height: 100%;
  text-align: center;
  transition: transform 0.8s;
  transform-style: preserve-3d;
  
}

.flip-card:hover .flip-card-inner {
  transform: rotateY(-180deg);
}

.flip-card-front, .flip-card-back {
  

  text-shadow:
    0 0 10px #000,
    0 0 50px #000;
    box-shadow:
    0 0 10px #000,
    0 0 20px #fff,
    0 0 50px #000;
  position: absolute;
  display: flex;
  flex-direction: column;
  justify-content: center;
  width: 100%;
  height: 100%;
  -webkit-backface-visibility: hidden;
  backface-visibility: hidden;
  border: 1px solid #fff;
  border-radius: 1rem;
}

.flip-card-front {
  
  background-size: cover;
  color:white;
  background-color: black;
}

.flip-card-back {
  background: #000;
  color: white;
  transform: rotateY(180deg);
}

</style>  


<?php
include( "baglan.php" );
$sqlflip = "Select * from ilan where ilanid";
$sonucflip = mysqli_query( $con, $sqlflip );
?>           
<?php

    while ( $satir = mysqli_fetch_array( $sonucflip) ) {

      echo '<div class="flip-card">';
      echo '<div class="flip-card-inner">';
      //sql girilen fotoğraf urlsi
      echo '<div class="flip-card-front" style="background-image: url('.$satir[ 'fotograf' ].')"><br><br><br><br><br><br><br><br><br>';

      echo "<h1>" . $satir[ 'meslek' ] . "</h1> ";

      echo '</div>';

     echo '<div class="flip-card-back">';
    //sql girilen açıklama
     echo "<h4>" . $satir[ 'aciklama' ] . "</h4><br/><br/><br/><br/><br/><br/> ";
     //sql girilen para
      echo "<h1>" . $satir[ 'fiyat' ] . "₺</h1>"; 
      echo '</div>';
     echo '</div>';
     echo '</div>';
    }
    ?>
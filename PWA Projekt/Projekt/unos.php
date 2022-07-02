<html>
<head> 
   <meta charset="UTF-8">  
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
   <link rel="stylesheet" type="text/css" href="style.css">
   <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-validate/1.19.1/jquery.validate.min.js"></script>
   <script src="validacijaUnosa.js"></script>
   <link rel="shortcut icon" type="image/jpg" href="favicon.ico"/>
   <title>Unos vijesti</title>
</head>

<body>
<header>
   <?php include 'navigacija.php';?>
</header>

<?php
    if(!isset($_SESSION["loggedin"])){
        header("Location:prijava.php");
      }
      else if ($_SESSION["loggedin"]===FALSE) {
        header("Location:prijava.php");
        
    }
?>
<main>
    <br>
    <h3 class="center">Unos novih vijesti</h3>
    <br>
    <div class="wrapper_unos">
    <form method="POST" name="prijava" enctype="multipart/form-data">
        <label for="naslov">Naslov vijesti:</label>
        <input type="text" id="naslov" name="naslov" class="input_text" placeholder="Unesite naslov vijesti..">

        <label for="kratki_sadrzaj">Kratki sadržaj vijesti (do 180 znakova):</label>
        <textarea name="kratki_sadrzaj" id="kratki_sadrzaj" class="input_kratki_sadrzaj" cols="30" rows="10" placeholder="Unesite kratki sadržaj vijesti.."></textarea>

        <label for="sadrzaj">Sadržaj vijesti:</label>
        <textarea name="sadrzaj" id="sadrzaj" class="input_kratki_sadrzaj" cols="30" rows="10" placeholder="Unesite sadržaj vijesti.."></textarea>

        <div class="form-item">
        <label for="pphoto">Slika: </label>
            <div class="form-field">
            <input type="file"accept="image/*" id="input_slika" class="input-text" name="fileToUpload" required/>
            </div>
        </div>
        <br>

        <label for="category">Kategorija vijesti:</label>
        <select name="category" class="form-control">
            <option value="sport">Sport</option>
            <option value="news">News</option>
        </select>
        <br>
        <label>Spremiti u arhivu: 
            <input type="checkbox" name="archive">
        </label>
        <br>
        <div class="container text-center">
            <button type="submit" name="submit" class="btn btn-success" value="Prihvati">Prihvati</button>
            <button type="reset" class="btn btn-danger" value="Poništi">Poništi</button>
        </div>
    </form>
    </div>
</main>
 </body>
 <div class="empty"></div>
<?php include 'footer.php';?>
 </html>




 <?php
    if(isset($_POST['naslov']) && isset($_POST['kratki_sadrzaj']) && isset($_POST['sadrzaj']) && isset($_POST['category']) && isset($_FILES["fileToUpload"])){
            $target_dir = "slike/";
            $target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
            $uploadOk = 1;
            $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
        
            if(isset($_POST["submit"])) {
            $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
            if($check !== false) {
                $uploadOk = 1;
            } else {
                $uploadOk = 0;
            }
            }
        
            if (file_exists($target_file)) {
            echo "<script type='text/javascript'> alert('Datoteka sa istim imenom već postoji!'); </script>";
            $uploadOk = 0;
            }
        
            if ($_FILES["fileToUpload"]["size"] > 2000000) {
            echo "<script type='text/javascript'> alert('Datoteka je pre velika!'); </script>";
            $uploadOk = 0;
            }
        
            if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
            && $imageFileType != "gif" ) {
            echo "<script type='text/javascript'> alert('Slika nije u podržanome formatu. Samo ekstenzije JPG, JPEG, PNG & GIF su dozovljene!'); </script>";
            $uploadOk = 0;
            }
        
            if ($uploadOk == 0) {
                echo "<script type='text/javascript'> alert('Nije moguće pohraniti sliku!'); </script>";
            }
            else {
                if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
                    #echo "The file ". htmlspecialchars( basename( $_FILES["fileToUpload"]["name"])). " has been uploaded.";
                }
                else {
                echo "<script type='text/javascript'> alert('Dogodila se greška pri pohranjivanju Vaše datoteke!'); </script>";
                }
            }
        
            if($uploadOk==1){
                
                include 'connect.php';
                $title=$_POST['naslov'];
                $about=$_POST['kratki_sadrzaj'];
                $content=$_POST['sadrzaj'];
                $category=$_POST['category'];
                $date=date('d.m.Y.');
                $picture = $_FILES['fileToUpload']['name'];
            
            
                if(isset($_POST['archive'])){
                $archive=1;
                }else{
                $archive=0;
                }
                


                $query = "INSERT INTO clanci(datum, naslov, sazetak, tekst, slika, kategorija, 
                arhiva, objavio) values (?,?,?,?,?,?,?,?)";

                $stmt = mysqli_stmt_init($dbc);

                if($_SESSION["username"]!=""){
                    $user = $_SESSION["username"];
                }
                else{
                    $user = "Korisnik";
                }

                if (mysqli_stmt_prepare($stmt, $query)){

                    mysqli_stmt_bind_param($stmt,'ssssssis',$date,$title,$about,$content,$picture,$category,$archive,$user);

                    mysqli_stmt_execute($stmt);
                 }
                 
                 mysqli_close($dbc);
                 echo "<script type='text/javascript'> alert('Vijest uspješno dododana!'); </script>";
                }
            }
?>
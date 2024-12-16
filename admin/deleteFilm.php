<?php
    require('libs/db.php');

    if(isset($_GET["id"])){
        $filmID = $_GET['id'];
    }
    $sql = "DELETE FROM film  WHERE id = $filmID";

    if (mysqli_query($link, $sql)) {?>
        <script>
            alert("Xóa phim thành công");
            location.href = "manageUser.php";
            // alert("hshshsh");
        </script>

    <?php        
    } else {
        echo "Lỗi xóa phim: " . mysqli_error($conn);
    }
    mysqli_close($link);
    
?>
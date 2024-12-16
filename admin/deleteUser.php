<?php
    require('libs/db.php');

    if(isset($_GET["id"])){
        $userID = $_GET['id'];
    }
    $sql = "DELETE FROM user  WHERE id = $userID";

    if (mysqli_query($link, $sql)) {?>
        <script>
            alert("Xóa User thành công");
            location.href = "manageUser.php";
            // alert("hshshsh");
        </script>

    <?php        
    } else {
        echo "Lỗi xóa user " . mysqli_error($conn);
    }
    mysqli_close($link);
    
?>
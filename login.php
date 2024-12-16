<?php
session_start();
ob_start();
require_once("libs/db.php");
if (isset($_POST["btn_login"])) {
    $username = $_POST["username"];
    $password = $_POST["password"];

    $username = strip_tags($username);
    $username = addslashes($username);
    $password = strip_tags($password);
    $password = addslashes($password);
    if ($username == "" || $password == "") { ?><script>
            alert("username và password bạn không được để trống!");
            window.location.href = "Index.php";
        </script>
        <?php
    } else {
        $sql = "SELECT * FROM user WHERE username = '$username'";
        $result = $link->query($sql);
        if (!$result || ($result->num_rows < 1)) { ?>
            <script>
                alert("Username không tồn tại");
                window.location.href = "Index.php";
            </script>
        <?php
            exit;
        }

        $dbarray = $result->fetch_array();

        if (password_verify($password, $dbarray["password"])) {
            $_SESSION['username'] = $username;
            $_SESSION['password'] = $password;
            $_SESSION['user_id'] = $dbarray['ID'];
            // phân quyền
            if ($dbarray['usertype'] == 99) {
                header('Location:admin/index.php');
                exit;
            } else {
                //member
                header('Location:Index.php');
                exit;
            }
        } else {
        ?>
            <script>
                alert('Đăng nhập thất bại: Mật khẩu không đúng');
                window.location.href = "Index.php";
            </script>
<?php
            //header('Location:index.php');
            exit;
        }
    }
}
?>
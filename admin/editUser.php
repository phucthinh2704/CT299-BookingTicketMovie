<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit User</title>
    <link rel="shortcut icon" href="../images/logo_main.png">

    <link rel="stylesheet" type="text/css" href="asset/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="asset/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="asset/css/local.css" />

    <script type="text/javascript" src="asset/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="asset/js/bootstrap.min.js"></script>

    <style>
        /* div {
            padding-bottom:20px;
        } */
        .form-control {
            color: black;
        }

        .notifyerror {
            color: red;
            font-size: 90%;
            font-style: italic;
            font-weight: normal;
            margin-bottom: 0px;
        }
    </style>
</head>

<body>
    <?php
    require('libs/db.php');

    if (isset($_GET["id"])) {
        $userID = $_GET['id'];
    }
    $sql = "SELECT * FROM user WHERE id = $userID";
    $result = mysqli_query($link, $sql);

    if (mysqli_num_rows($result) == 0) {
        echo "No required user";
    } else {
        $row = mysqli_fetch_assoc($result); ?>

        <div id="wrapper">
            <?php
            include("common.php");
            ?>
            <div id="add-user">
                <div class="row text-center">
                    <h2>Chỉnh sửa User</h2>
                </div>
                <form method="post" id="form-update" name="form-update" class="form-horizontal" action="" role="form" style="padding: 20px;">
                    <div class="form-group">
                        <label class="col-lg-3 control-label">ID</label>
                        <div class="col-lg-7">
                            <input type="text" class="form-control" name="id" id="id" value="<?php echo $row["ID"]; ?>" readonly>
                        </div>
                    </div>
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Tài khoản</label>
                        <div class="col-lg-7">
                            <input type="text" class="form-control" name="username" id="username" value="<?php echo $row["username"]; ?>">
                            <label class="notifyerror" style="visibility: hidden; height: 0px" id="usernameerror">Tên tài khoản chỉ bao gồm ký tự a-z, A-Z và số</label>
                        </div>
                    </div>
                    <!-- dont have to get value of password from db -->
                    <div class="form-group">
                        <label class="col-lg-3 control-label">Mật khẩu mới</label>
                        <div class="col-lg-7">
                            <input type="password" class="form-control" name="password" id="password1" value="">
                            <label class="notifyerror" style="visibility: hidden; height: 0px" id="password1error">Mật khẩu phải bao gồm chữ thường, chữ hoa và số, độ dài tối thiểu 8 ký tự</label>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-3 control-label">Họ tên</label>
                        <div class="col-lg-7">
                            <input type="text" class="form-control" name="fullname" id="fullname" value="<?php echo $row["fullname"]; ?>">
                            <label class="notifyerror" style="visibility: hidden; height: 0px" id="fullnameerror">Tên chỉ bao gồm các chữ cái</label>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-3 control-label">Email</label>
                        <div class="col-lg-7"><input type="email" class="form-control" name="email" id="email" value="<?php echo $row["email"]; ?>">
                            <label class="notifyerror" style="visibility: hidden; height: 0px" id="emailerror">Email không đúng định dạng name@domain</label>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="birthday" class="col-lg-3 control-label">Ngày sinh</label>
                        <div class="col-lg-7">
                            <input class="form-control" type="date" value="<?php echo $row["birthday"]; ?>" id="birthday" name="birthday">
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="col-lg-3 control-label">Giới tính</label>
                        <div class="col-lg-7">
                            <label class="checkbox-inline">
                                <input type="radio" name="gender" id="update-gender-male" value="male" <?php if ($row["sex"] == "male") echo "checked"; ?>> Nam</label>
                            <label class="checkbox-inline">
                                <input type="radio" name="gender" id="update-gender-female" value="female" <?php if ($row["sex"] == "female") echo "checked"; ?>> Nữ
                            </label>
                        </div>
                    </div>

                    <div class="col-offset-3 col-lg-10">
                        <div class="col-lg-3"></div>
                        <div class="col-lg-7">
                            <button style="margin-left: 40px;" type="submit" class="btn btn-primary" id="button_update" name="button_update">Lưu lại </button>
                        </div>
                    </div>

                    <div class="clear"></div>
                </form>

            </div>
        </div>
        
        <script language="javascript">
            var username = document.getElementById("username");
            var password1 = document.getElementById("password1");
            var password2 = document.getElementById("password2");
            var fullname = document.getElementById("fullname");
            var email = document.getElementById("email");
            var phone = document.getElementById("phone");
            var button_update = document.getElementById("button_update");

            var usernameerror = document.getElementById("usernameerror");
            //var passworderror = document.getElementById("passworderror");
            var password1error = document.getElementById("password1error");
            var password2error1 = document.getElementById("password2error1");
            var fullnameerror = document.getElementById("fullnameerror");
            var emailerror = document.getElementById("emailerror");
            //var phoneerror =  document.getElementById("phoneerror");

            var regUsername = /^[A-Za-z0-9]+$/;
            var regFullname = /^[A-Za-z ]+$/;
            var regEmail = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
            var regPassword = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z]{8,}$/


            username.onchange = function() {
                checkname();
            }

            password1.onchange = function() {
                checkNewpassword();
            }

            // password2.onchange = function() {
            //     checkNewpassword2();
            // }

            fullname.onchange = function() {
                checkfullname();
            }

            email.onchange = function() {
                checkemail();
            }

            button_update.onclick = function() {
                if (username.value.toString().length <= 0) {
                    alert("Bạn chưa nhập tên tài khoản");
                    checkname();
                    return false;
                }

                if (fullname.value.toString().length <= 0) {
                    alert("Bạn chưa nhập tên");
                    checkname();
                    return false;
                }

                if (email.value.toString().length <= 0) {
                    alert("Bạn chưa nhập email");
                    checkemail();
                    return false;
                }

                var validName = checkname();

                var validNewPass1 = true;
                var validNewPass2 = true;

                if (password1.value.toString().length > 0 || password2.value.toString().length > 0) {
                    validNewPass1 = checkNewpassword();
                    validNewPass2 = checkNewpassword2();
                }
                var validFullname = checkfullname();
                var validEmail = checkemail();

                if (validName && validNewPass1 && validNewPass2 && validFullname && validEmail) {
                    return true;
                }
                return false;
            }

            function checkNewpassword() {
                if (!regPassword.test(password1.value)) {
                    password1error.style.visibility = 'visible';
                    password1error.style.height = 'auto';
                    return false;
                } else {
                    password1error.style.visibility = 'hidden';
                    password1error.style.height = '0px';

                    if (password2.value.toString().length > 0) {
                        if (password2.value.localeCompare(password1.value) == 0) {
                            password2error1.style.visibility = 'hidden';
                            password2error1.style.height = '0px';
                            return true;
                        } else {
                            password2error1.innerHTML = "Mật khẩu không khớp";
                            password2error1.style.visibility = 'visible';
                            password2error1.style.height = 'auto';
                            return false;
                        }
                    }
                    return true;
                }
            }

            function checkname() {
                if (!regUsername.test(username.value)) {
                    usernameerror.style.visibility = 'visible';
                    usernameerror.style.height = 'auto';
                    return false;
                } else {
                    usernameerror.style.visibility = 'hidden';
                    usernameerror.style.height = '0px';
                    return true;
                }
            }

            function checkpass() {
                if (!regPassword.test(password.value)) {
                    passworderror.style.visibility = 'visible';
                    passworderror.style.height = 'auto';
                    return false;
                } else {
                    passworderror.style.visibility = 'hidden';
                    passworderror.style.height = '0px';
                    return true;
                }
            }

            function checkemail() {
                if (!regEmail.test(email.value)) {
                    emailerror.style.visibility = 'visible';
                    emailerror.style.height = 'auto';
                    return false;
                } else {
                    emailerror.style.visibility = 'hidden';
                    emailerror.style.height = '0px';
                    return true;
                }
            }

            function checkfullname() {
                if (!regFullname.test(fullname.value)) {
                    fullnameerror.style.visibility = 'visible';
                    fullnameerror.style.height = 'auto';
                    return false;
                } else {
                    fullnameerror.style.visibility = 'hidden';
                    fullnameerror.style.height = '0px';
                    return true;
                }
            }

            function checkNewpassword2() {
                if (!regPassword.test(password2.value)) {
                    //password2error1.innerHTML = errorPasswordDefault;
                    password2error1.style.visibility = 'visible';
                    password2error1.style.height = 'auto';
                    return false;
                } else {
                    if (password1.value.toString().length > 0) {
                        if (password2.value.localeCompare(password1.value) == 0) {
                            password2error1.style.visibility = 'hidden';
                            password2error1.style.height = '0px';
                            return true;
                        } else {
                            password2error1.innerHTML = "Mật khẩu không khớp";
                            password2error1.style.visibility = 'visible';
                            password2error1.style.height = 'auto';
                            return false;
                        }
                    } else {
                        password2error1.style.visibility = 'hidden';
                        password2error1.style.height = '0px';
                        return true;
                    }
                }
            }
        </script>

        <?php
        require_once("libs/db.php");
        if (isset($_POST["button_update"])) {
            $username = $_POST["username"];
            $password = $_POST["password"];
            $hash = password_hash($password, PASSWORD_BCRYPT);
            $email = $_POST["email"];
            $fullName = $_POST["fullname"];
            $birthday = $_POST["birthday"];
            $gender = $_POST["gender"];

            $sql = "SELECT * FROM user WHERE ID = '$userID'";
            $check = mysqli_query($link, $sql);
            print_r(mysqli_num_rows($check));
            if (mysqli_num_rows($check) <= 0) { ?>
                <script>
                    alert('Tài khoản với ID <?php echo $userID; ?> chưa có');
                </script>";
                <?php
            } else {
                $sql = "UPDATE user SET username='$username', password='$hash', fullname='$fullName', email='$email', birthday='$birthday', sex='$gender' WHERE id = $userID";
                $result = mysqli_query($link, $sql);

                if ($result) { ?>
                    <script>
                        alert("Chỉnh sửa thông tin thành công!");
                        location.href = window.location.href; //reload page
                    </script>
                <?php
                } else {
                ?>
                    <script>
                        alert("Chỉnh sửa thông tin thất bại!");
                    </script>
        <?php
                }
            }
        }
        ?>
    <?php }
    mysqli_close($link);
    ?>

</body>

</html>
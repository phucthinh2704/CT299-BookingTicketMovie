<?php
require_once("libs/db.php");
ob_start();
if (isset($_POST["button_update"])) {
  $username = $_POST["username"];
  $password = $_POST["password"];
  $hash = password_hash($password, PASSWORD_BCRYPT);
  $email = $_POST["email"];
  $fullName = $_POST["fullname"];
  $birthday = $_POST["birthday"];
  $gender = $_POST["gender"];

  $sql = "SELECT* FROM user WHERE username = '$username'";
  $check = $link->query($sql);
  if ($check->num_rows > 0) {
    ?>
    <script>
      alert('Tài khoản đã tồn tại');
    </script>
    <?php
  } else {
    $sql = "INSERT INTO user(username,fullname,password,email,birthday,sex,usertype)
                        VALUES ('$username', '$fullName','$hash','$email','$birthday','$gender',20)";
    $link->query( $sql);
    ?>
    <script>
      alert('Đăng ký thành công');
      window.location.href = "Index.php";
    </script>
    <?php
    //header('Location:Index.php');
  }
}
?>

<!DOCTYPE html>
<!-- saved from url=(0018)javascript:void(); -->
<html lang="vi" itemscope="itemscope" itemtype="http://schema.org/WebPage">

<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>Index</title>
  <link href="css/owl.carousel.css" type="text/css" rel="stylesheet">
  <script src="js/jquery.min.js" type="text/javascript"></script>
  <script src="js/owl.carousel.js" type="text/javascript"></script>
  <script src="js/jwplayer.js"></script>

  <link href="css/style_info_account.min.css" type="text/css" rel="stylesheet">
  <link href="css/style.min.css" type="text/css" rel="stylesheet">

</head>

<body style="position: relative;">
  <div id="wrapper">
    <?php
    include("header.php");
    ?>
    <style type="text/css">
      .checkbox-inline {
        padding: 7px 0px 0px !important;
      }

      .form-register {
        padding: 10px;
        margin-bottom: 50px;
      }

      .form-control {
        background-color: #333 !important;
        border: 1px solid #111 !important;
        color: #b8b8b8 !important;
      }


      .col-lg-3,
      .col-lg-7,
      .col-lg-10 {
        position: relative;
        min-height: 1px;
        padding-left: 10px;
        padding-right: 10px;
      }

      .form-control {
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
      }

      @media (min-width: 992px) {

        .col-lg-3,

        .col-lg-7,

        .col-lg-10 {
          float: left;
        }

        .col-lg-3 {
          width: 25%;
        }

        .col-lg-7 {
          width: 58.333333333333336%;
        }

        .col-lg-10 {
          width: 30%;
        }

        .col-offset-3 {
          margin-left: 25%;
        }
      }

      .form-control:-moz-placeholder {
        color: #999999;
      }


      .form-control:-ms-input-placeholder {
        color: #999999;
      }

      .form-control::-webkit-input-placeholder {
        color: #999999;
      }

      .form-control {
        display: block;
        width: 100%;
        height: 38px;
        padding: 8px 12px;
        font-size: 14px;
        line-height: 1.428571429;
        color: #555555;
        vertical-align: middle;
        background-color: #ffffff;
        border: 1px solid #cccccc;
        border-radius: 4px;
        -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
        box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075);
        -webkit-transition: border-color ease-in-out 0.15s, box-shadow ease-in-out 0.15s;
        transition: border-color ease-in-out 0.15s, box-shadow ease-in-out 0.15s;
      }

      .form-control:focus {
        border-color: rgba(82, 168, 236, 0.8);
        outline: none;
        -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 8px rgba(82, 168, 236, 0.6);
        box-shadow: inset 0 1px 1px rgba(0, 0, 0, 0.075), 0 0 8px rgba(82, 168, 236, 0.6);
      }

      .form-group {
        margin-bottom: 15px;
      }

      .radio,
      .checkbox {
        display: block;
        min-height: 20px;
        padding-left: 20px;
        margin-top: 10px;
        margin-bottom: 10px;
        vertical-align: middle;
      }

      .radio label,
      .checkbox label {
        display: inline;
        margin-bottom: 0;
        font-weight: normal;
        cursor: pointer;
      }

      .radio input[type="radio"],
      .radio-inline input[type="radio"],
      .checkbox input[type="checkbox"],
      .checkbox-inline input[type="checkbox"] {
        float: left;
        margin-left: -20px;
      }

      .radio+.radio,
      .checkbox+.checkbox {
        margin-top: -5px;
      }

      .radio-inline,
      .checkbox-inline {
        display: inline-block;
        padding-left: 20px;
        margin-bottom: 0;
        font-weight: normal;
        vertical-align: middle;
        cursor: pointer;
      }

      .radio-inline+.radio-inline,
      .checkbox-inline+.checkbox-inline {
        margin-top: 0;
        margin-left: 10px;
      }


      .btn {
        display: inline-block;
        padding: 8px 12px;
        margin-bottom: 0;
        font-size: 14px;
        font-weight: 500;
        line-height: 1.428571429;
        text-align: center;
        white-space: nowrap;
        vertical-align: middle;
        cursor: pointer;
        border: 1px solid transparent;
        border-radius: 4px;
        margin-left: 10px;
      }



      .btn-primary {
        color: #ffffff;
        background-color: #428bca;
        border-color: #428bca;
      }

      .btn-primary:hover,
      .btn-primary:focus,
      .btn-primary:active,
      .btn-primary.active {
        background-color: #357ebd;
        border-color: #3071a9;
      }

      .btn-primary.disabled,
      .btn-primary[disabled],
      fieldset[disabled] .btn-primary,
      .btn-primary.disabled:hover,
      .btn-primary[disabled]:hover,
      fieldset[disabled] .btn-primary:hover,
      .btn-primary.disabled:focus,
      .btn-primary[disabled]:focus,
      fieldset[disabled] .btn-primary:focus,
      .btn-primary.disabled:active,
      .btn-primary[disabled]:active,
      fieldset[disabled] .btn-primary:active,
      .btn-primary.disabled.active,
      .btn-primary[disabled].active,
      fieldset[disabled] .btn-primary.active {
        background-color: #428bca;
        border-color: #428bca;
      }


      .form-inline .form-control,
      .form-inline .radio,
      .form-inline .checkbox {
        display: inline-block;
      }

      .form-inline .radio,
      .form-inline .checkbox {
        margin-top: 0;
        margin-bottom: 0;
      }

      .form-horizontal .control-label {
        padding-top: 9px;
      }

      .form-horizontal .form-group:before,
      .form-horizontal .form-group:after {
        display: table;
        content: " ";
      }


      .form-horizontal .form-group:after {
        clear: both;
      }

      .form-horizontal .form-group:before,
      .form-horizontal .form-group:after {
        display: table;
        content: " ";
      }

      .form-horizontal .form-group:after {
        clear: both;
      }

      @media (min-width: 768px) {
        .form-horizontal .form-group {

          margin-left: -15px;
        }
      }

      .form-horizontal .form-group .row {

        margin-left: -10px;
      }

      @media (min-width: 768px) {
        .form-horizontal .control-label {
          text-align: right;
        }
      }

      .notifyerror {
        color: red;
        font-size: 90%;
        font-style: italic;
        font-weight: normal;
        margin-bottom: 0px;
      }
    </style>

    <h3 style="font-size:30px;text-align:center; background-color: black;margin-bottom:0px;margin-top:0px;">Đăng kí thành viên</h3>

    <div class="form-update">
      <form method="post" id="form-update" name="form-update" class="form-horizontal" action="" role="form" style="padding: 20px;">

        <div class="form-group">
          <label class="col-lg-3 control-label">Tài khoản</label>
          <div class="col-lg-7">
            <input type="text" class="form-control" name="username" id="username" value="">
            <label class="notifyerror" style="visibility: hidden; height: 0px" id="usernameerror">Tên tài khoản chỉ bao gồm ký tự a-z, A-Z và số</label>
          </div>
        </div>

        <div class="form-group">
          <label class="col-lg-3 control-label">Mật khẩu</label>
          <div class="col-lg-7">
            <input type="password" class="form-control" name="password" id="password1" value="">
            <label class="notifyerror" style="visibility: hidden; height: 0px" id="password1error">Mật khẩu phải bao gồm chữ thường, chữ hoa và số, độ dài tối thiểu 8 ký tự</label>
          </div>
        </div>


        <div class="form-group">
          <label class="col-lg-3 control-label">Xác nhận mật khẩu</label>
          <div class="col-lg-7">
            <input type="password" class="form-control" name="password2" id="password2" value="">
            <label class="notifyerror" style="visibility: hidden; height: 0px" id="password2error1">Mật khẩu phải bao gồm chữ thường, chữ hoa và số, độ dài tối thiểu 8 ký tự</label>
          </div>
        </div>

        <div class="form-group">
          <label class="col-lg-3 control-label">Họ tên</label>
          <div class="col-lg-7">
            <input type="text" class="form-control" name="fullname" id="fullname" value="">
            <label class="notifyerror" style="visibility: hidden; height: 0px" id="fullnameerror">Tên chỉ bao gồm các chữ cái</label>
          </div>
        </div>

        <div class="form-group">
          <label class="col-lg-3 control-label">Email</label>
          <div class="col-lg-7"><input type="email" class="form-control" name="email" id="email">
            <label class="notifyerror" style="visibility: hidden; height: 0px" id="emailerror">Email không đúng định dạng name@domain</label>
          </div>
        </div>

        <div class="form-group">
          <label for="birthday" class="col-lg-3 control-label">Ngày sinh</label>
          <div class="col-lg-7">
            <input class="form-control" type="date" value="" id="birthday" name="birthday">
          </div>
        </div>

        <div class="form-group">
          <label class="col-lg-3 control-label">Giới tính</label>
          <div class="col-lg-7">
            <label class="checkbox-inline">
              <input type="radio" name="gender" id="update-gender-male" value="male" checked=""> Nam</label>
            <label class="checkbox-inline">
              <input type="radio" name="gender" id="update-gender-female" value="female"> Nữ
            </label>
          </div>
        </div>



        <div class="col-offset-3 col-lg-10">
          <button type="submit" class="btn btn-primary" id="button_update" name="button_update">Đăng kí </button>
        </div>

        <div class="clear"></div>
      </form>



    </div>
    <?php
    include("footer.php");
    ?>
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
    // var regPhone =  /^\d{10}$/;
    var regPassword = /^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])[0-9a-zA-Z]{8,}$/

    //var errorPasswordDefault = (passworderror.innerText || passworderror.textContent);

    username.onchange = function() {
      checkname();
    }

    password1.onchange = function() {
      checkNewpassword();
    }

    password2.onchange = function() {
      checkNewpassword2();
    }

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
</body>

</html>
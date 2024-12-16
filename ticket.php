<?php
require_once("libs/db.php");
session_start();
$idUser = !empty($_SESSION['user_id']) ? $_SESSION['user_id'] : 0;
?>

<!DOCTYPE html>
<!-- saved from url=(0018)javascript:void(); -->
<html lang="vi" itemscope="itemscope" itemtype="http://schema.org/WebPage">

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Vé của bạn</title>
    <link rel="shortcut icon" href="./images/logo_main.png">
    <link href="css/owl.carousel.css" type="text/css" rel="stylesheet">
    <script src="js/jquery.min.js" type="text/javascript"></script>
    <script src="js/owl.carousel.js" type="text/javascript"></script>
    <script src="js/jwplayer.js"></script>


    <link href="css/style-info_account.css" type="text/css" rel="stylesheet">
    <link href="css/style.min.css" type="text/css" rel="stylesheet">

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

        .form-control::-moz-placeholder {
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

        .cookieCard {
            margin-top: 20px;
            width: 250px;
            height: 180px;
            background: linear-gradient(to right, rgb(137, 104, 255), rgb(175, 152, 255));
            display: flex;
            flex-direction: column;
            align-items: flex-start;
            justify-content: center;
            gap: 20px;
            padding: 20px;
            position: relative;
            overflow: hidden;
        }

        .cookieCard::before {
            width: 150px;
            height: 150px;
            content: "";
            background: linear-gradient(to right, rgb(142, 110, 255), rgb(208, 195, 255));
            position: absolute;
            z-index: 1;
            border-radius: 50%;
            right: -25%;
            top: -25%;
        }

        .cookieHeading {
            font-size: 1.5em;
            font-weight: 600;
            color: rgb(241, 241, 241);
            z-index: 2;
        }

        .cookieDescription {
            font-size: 0.9em;
            color: rgb(241, 241, 241);
            z-index: 2;
        }

        .cookieDescription a {
            color: rgb(241, 241, 241);
        }

        .acceptButton {
            padding: 11px 20px;
            background-color: #7b57ff;
            transition-duration: .2s;
            border: none;
            color: rgb(241, 241, 241);
            cursor: pointer;
            font-weight: 600;
            z-index: 2;
        }

        .acceptButton:hover {
            background-color: #714aff;
            transition-duration: .2s;
        }
    </style>
</head>

<body style="position: relative;">
    <div id="wrapper">
        <?php
        include('header.php');
        ?>
        <div id="body-wrap" class="container">
            <h3 style="margin-bottom: 20px; font-size:30px;text-align:center; ">Vé của bạn</h3>
            <div style="display:flex;flex-wrap:wrap">
                <?php
                if ($idUser > 0) {
                    $query = "SELECT t.booking_time, t.id_showtime, t.seats, m.name, t.id_ticket, st.time
                          FROM tickets t
                          JOIN showtime st ON t.id_showtime = st.id_showtime
                          JOIN film m ON st.id_film = m.id
                          WHERE t.id_user = $idUser
                          order by t.id_ticket desc
                          ";
                    $result = mysqli_query($link, $query);
                    if (mysqli_num_rows($result) > 0) {
                        while ($row = mysqli_fetch_assoc($result)) {

                ?>
                            <div class="cookieCard" style="margin-right:10px">
                                <p class="cookieHeading">Ticket</p>
                                <p class="cookieDescription"><strong style="font-size:20px"><?php echo $row['name'] ?></strong></p>
                                <p>Vị trí ngồi <strong style="color:red"><?php echo $row['seats'] ?></strong></p>
                                <p>Suất chiếu <strong style="color:red"><?php echo $row['time'] ?></strong></p>
                                <button type="button" class="acceptButton"><a href="ticket.php?action=delete&idTicket=<?php echo $row['id_ticket'] ?>">Hủy vé</a></button>
                            </div>
                <?php }
                    }
                } ?>
            </div>
        </div>


        <?php
        include('footer.php');
        ?>
        <?php
        try {
            if (isset($_GET['idTicket']) && isset($_GET['action'])) {
                $idUser = $_SESSION['user_id'] ? $_SESSION['user_id'] : 0;
                $id = $_GET['idTicket'] !== '' ? $_GET['idTicket'] : 0;
                $query = "delete from tickets where id_ticket = $id AND id_user =$idUser ";
                mysqli_query($link, $query);
                echo '<script> alert("Hủy vé thành công.");
                window.location.href = "ticket.php";
                </script>';
            }
        } catch (Throwable $e) {
            echo '<script> alert("Hủy vé thất bại.");
           window.location.href = "ticket.php";</script>';
        }
        ?>
</body>

</html>
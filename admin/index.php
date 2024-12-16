<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Dashboard - Admin</title>

    <link rel="stylesheet" type="text/css" href="asset/css/bootstrap.min.css" />
    <link rel="stylesheet" type="text/css" href="asset/font-awesome/css/font-awesome.min.css" />
    <link rel="stylesheet" type="text/css" href="asset/css/local.css" />
    <link rel="shortcut icon" href="../images/logo_main.png">
    <script type="text/javascript" src="asset/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="asset/js/bootstrap.min.js"></script>

    <!-- you need to include the shieldui css and js assets in order for the charts to work -->
    <link rel="stylesheet" type="text/css" href="http://www.shieldui.com/shared/components/latest/css/light-bootstrap/all.min.css" />
    <link id="gridcss" rel="stylesheet" type="text/css" href="http://www.shieldui.com/shared/components/latest/css/dark-bootstrap/all.min.css" />

    <script type="text/javascript" src="http://www.shieldui.com/shared/components/latest/js/shieldui-all.min.js"></script>
    <script type="text/javascript" src="http://www.prepbootstrap.com/Content/js/gridData.js"></script>
</head>

<body>
    <div id="wrapper">
        <?php
        include("common.php");
        ?>
        <?php
        if (isset($_SESSION["username"])) {
            $username = $_SESSION["username"];
            $sql = "SELECT * FROM user where username = '$username'";
            $result = $link->query($sql);
            $usertype = 20;
            while ($row = $result->fetch_assoc())
                $usertype = $row['usertype'];
            if ($usertype != 99)
                echo "<script> window.location.href = \"../Index.php\" </script>";
        } else {
            echo "<script> window.location.href = \"../Index.php\" </script>";
        }
        ?>
        <div id="page-wrapper" class="text-center" style="margin: auto">
            <img src="asset/images/welcom_admin.png" alt="welcome admin" class="rounded mx-auto d-block">
            <h2>Welcome Admin</h2>
            <p>
                You have all right in this system, such as Post film, edit film and add, edit, delete user,....
            </p>
        </div>
    </div>


    <script type="text/javascript">
        jQuery(function($) {
            var performance = [12, 43, 34, 22, 12, 33, 4, 17, 22, 34, 54, 67],
                visits = [123, 323, 443, 32],
                traffic = [{
                        Source: "Direct",
                        Amount: 323,
                        Change: 53,
                        Percent: 23,
                        Target: 600
                    },
                    {
                        Source: "Refer",
                        Amount: 345,
                        Change: 34,
                        Percent: 45,
                        Target: 567
                    },
                    {
                        Source: "Social",
                        Amount: 567,
                        Change: 67,
                        Percent: 23,
                        Target: 456
                    },
                    {
                        Source: "Search",
                        Amount: 234,
                        Change: 23,
                        Percent: 56,
                        Target: 890
                    },
                    {
                        Source: "Internal",
                        Amount: 111,
                        Change: 78,
                        Percent: 12,
                        Target: 345
                    }
                ];


            $("#shieldui-chart1").shieldChart({
                theme: "dark",

                primaryHeader: {
                    text: "Visitors"
                },
                exportOptions: {
                    image: false,
                    print: false
                },
                dataSeries: [{
                    seriesType: "area",
                    collectionAlias: "Q Data",
                    data: performance
                }]
            });

            $("#shieldui-chart2").shieldChart({
                theme: "dark",
                primaryHeader: {
                    text: "Traffic Per week"
                },
                exportOptions: {
                    image: false,
                    print: false
                },
                dataSeries: [{
                    seriesType: "pie",
                    collectionAlias: "traffic",
                    data: visits
                }]
            });

            $("#shieldui-grid1").shieldGrid({
                dataSource: {
                    data: traffic
                },
                sorting: {
                    multiple: true
                },
                rowHover: false,
                paging: false,
                columns: [{
                        field: "Source",
                        width: "170px",
                        title: "Source"
                    },
                    {
                        field: "Amount",
                        title: "Amount"
                    },
                    {
                        field: "Percent",
                        title: "Percent",
                        format: "{0} %"
                    },
                    {
                        field: "Target",
                        title: "Target"
                    },
                ]
            });
        });
    </script>
</body>

</html>
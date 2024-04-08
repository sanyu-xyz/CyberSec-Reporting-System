<html>

<head>
    <meta http-equiv="refresh" content="1; url='../homepage.php'" />
</head>

<body bgcolor="black">
    <font color="white">
        <center>
            <h2>RSending your message...</h2>
        </center>
    </font>
    <?php

    include "input.php";

    if (isset($_POST['Policy_Num'])) {
        $sql = "delete from policy_data where id = '" . $_POST['Policy_Num'] . "'";
        $result = mysqli_query($conn, $sql);
    }

    $sql = "select * from policy_data";
    $result = mysqli_query($conn, $sql);
    ?>

    
    <?php header('Location:modified1.php'); ?>
</body>

</html>
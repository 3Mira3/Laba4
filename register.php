<?php
session_start();
error_reporting(0);
include('includes/dbconnection.php');



if(isset($_POST['register'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Validate UserName
    if (!preg_match("/^[a-zA-Z0-9іїІЇ]+$/u", $username)) {
        $errorMessage = "Invalid characters in User Name. Only letters, numbers, and 'і', 'ї' are allowed.";
    }

    // Validate Password
    if (!preg_match("/^[a-zA-Z0-9іїІЇ_.,!@#\$%^&*()-]+$/u", $password)) {
        $errorMessage = "Invalid characters in Password. Only letters, numbers, 'і', 'ї', and selected symbols are allowed.";
    }

    $hashedPassword = md5($password);

    $query = mysqli_prepare($con, "INSERT INTO tblusers (UserName, Password) VALUES (?, ?)");
    mysqli_stmt_bind_param($query, "ss", $username, $hashedPassword);
    $result = mysqli_stmt_execute($query);

   if ($result) {
    echo '<script>alert("Registration successful. You can now login.")</script>';
} else {
    echo '<script>alert("Registration failed. Please try again.")</script>';
}

} elseif(isset($_POST['login'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    // Validate UserName
    if (!preg_match("/^[a-zA-Z0-9іїІЇ]+$/u", $username)) {
        $errorMessage = "Invalid characters in User Name. Only letters, numbers, and 'і', 'ї' are allowed.";
    }

    // Validate Password
    if (!preg_match("/^[a-zA-Z0-9іїІЇ_.,!@#\$%^&*()-]+$/u", $password)) {
        $errorMessage = "Invalid characters in Password. Only letters, numbers, 'і', 'ї', and selected symbols are allowed.";
    }

    // If there's an error message, display it
    if(isset($errorMessage)) {
        echo '<script>alert("' . htmlspecialchars($errorMessage) . '")</script>';
    } else {
        $hashedPassword = substr(md5($password), 0, 20);
echo '<script>alert("' . $hashedPassword . '")</script>';

// c9f0f895fb98ab9159f51fd0297e236d
// c9f0f895fb98ab9159f5

        $query = mysqli_prepare($con, "SELECT ID FROM tblusers WHERE UserName=? AND Password=? ");
        mysqli_stmt_bind_param($query, "ss", $username, $hashedPassword);
        mysqli_stmt_execute($query);
        mysqli_stmt_store_result($query);

        $rows = mysqli_stmt_num_rows($query);

        if($rows > 0) {
            mysqli_stmt_bind_result($query, $userID);
            mysqli_stmt_fetch($query);
            $_SESSION['zmsaid'] = $userID;
            header('location:dashboard.php');
        } else {
            echo '<script>alert("Wrong data entered. ' . mysqli_error($con) . '")</script>';
        }

        mysqli_stmt_close($query);
        mysqli_close($con);
    }
}





?>

<!-- HTML form for user registration -->
<!doctype html>
<html class="no-js" lang="en">
<head>
   <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Login - Zoo Management System</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="shortcut icon" type="image/png" href="assets/images/icon/favicon.ico">
    <link rel="stylesheet" href="assets/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/css/font-awesome.min.css">
    <link rel="stylesheet" href="assets/css/themify-icons.css">
    <link rel="stylesheet" href="assets/css/metisMenu.css">
    <link rel="stylesheet" href="assets/css/owl.carousel.min.css">
    <link rel="stylesheet" href="assets/css/slicknav.min.css">
    <!-- amchart css -->
    <link rel="stylesheet" href="https://www.amcharts.com/lib/3/plugins/export/export.css" type="text/css" media="all" />
    <!-- others css -->
    <link rel="stylesheet" href="assets/css/typography.css">
    <link rel="stylesheet" href="assets/css/default-css.css">
    <link rel="stylesheet" href="assets/css/styles.css">
    <link rel="stylesheet" href="assets/css/responsive.css">
    <!-- modernizr css -->
    <script src="assets/js/vendor/modernizr-2.8.3.min.js"></script>
</head>
<body>
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->
    <!-- preloader area start -->
    <div id="preloader">
        <div class="loader"></div>
    </div>
    <!-- preloader area end -->
    <!-- login area start -->
                                
    <div class="login-area">
        <div class="container">
            <div class="login-box ptb--100">
                <form action="#" method="post" name="register">
                   <div class="login-form-head">
                        <h4>Zoo Management System</h4>
                        <p>Hello there, Sign in and start managing your User Template</p>
                    </div>
                    <div class="login-form-body">
                        <div class="form-gp">
                            <label for="exampleInputEmail1">User Name</label>
                            <input type="text" id="username" name="username" required="true">
                            <i class="ti-user"></i>
                        </div>
                        <div class="form-gp">
                            <label for="exampleInputPassword1">Password</label>
                            <input type="password" id="password" name="password" required="true">
                            <i class="ti-lock"></i>
                        </div>
                        <div class="submit-btn-area">
                            <button id="form_submit_register" type="submit" name="register">Register <i class="ti-arrow-right"></i></button>
                        </div>
                        <div class="row mb-4 rmber-area">
                            <div class="col-6">
                                
                            </div>
                            <div class="col-6 text-right">
                                <a href="forgot-password.php">Forgot Password?</a>
                            </div>
                        </div>
                        <div class="submit-btn-area">
                            <button id="form_submit_login" type="submit" name="login">Submit <i class="ti-arrow-right"></i></button>
							
							<div style="padding-top: 20px">
                                <a href="../index.php">FOR ADMIN -> CLICK HERE!</a>
                        </div>
                            
                        </div>
                        <div style="padding-top: 20px">
                                <a href="../../index.php">Back To Website!!</a>
                            </div>
                    </div>
                </form>
            </div>
        </div>
    </div>
     <!-- login area end -->

    <!-- jquery latest version -->
    <script src="assets/js/vendor/jquery-2.2.4.min.js"></script>
    <!-- bootstrap 4 js -->
    <script src="assets/js/popper.min.js"></script>
    <script src="assets/js/bootstrap.min.js"></script>
    <script src="assets/js/owl.carousel.min.js"></script>
    <script src="assets/js/metisMenu.min.js"></script>
    <script src="assets/js/jquery.slimscroll.min.js"></script>
    <script src="assets/js/jquery.slicknav.min.js"></script>
    
    <!-- others plugins -->
    <script src="assets/js/plugins.js"></script>
    <script src="assets/js/scripts.js"></script>
</body>
</html>
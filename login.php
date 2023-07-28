<?php 
include 'init.php';
if ($users->isLoggedIn()) {
	header('Location: ticket.php');
}
$errorMessage = $users->login();
include('inc/header.php');
?>
<title>Customer Service Ticketing System</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
<!-- jQuery -->

<style>
/* Custom styles specific to login form */
.login-container {
    height: 100vh;
    display: flex;
    justify-content: center;
    align-items: center;
<<<<<<< HEAD
    background-color: #274472; /* Light gray background for the page */
=======
    background-color: #f2f2f2; /* Light gray background for the page */
>>>>>>> 39e0dc25f8bd167959348b0f3220180ea855aaeb
}

.login-form {
    max-width: 400px;
    width: 100%;
    padding: 20px;
<<<<<<< HEAD
    background-color: #C3E0E5;
=======
    background-color: #fff;
>>>>>>> 39e0dc25f8bd167959348b0f3220180ea855aaeb
    border: 1px solid #ccc;
    border-radius: 5px; /* Rounded corners for the form container */
    box-shadow: 0 0 5px rgba(0, 0, 0, 0.2); /* Add a subtle shadow to the form container */
}

.login-form h2 {
    text-align: center;
    font-family: "Arial", sans-serif; /* Change the font family for the heading */
    color: #5016ac; /* Change the font color for the heading */
}

.login-form h3 {
    text-align: center;
<<<<<<< HEAD
    background-color: #5885AF; /* Green highlight for the login heading */
    color: #fff; /* Font color for the login heading */
    width: 370px;
=======
    background-color: #00796B; /* Green highlight for the login heading */
    color: #fff; /* Font color for the login heading */
>>>>>>> 39e0dc25f8bd167959348b0f3220180ea855aaeb
    padding: 10px 0; /* Add padding to the top and bottom of the login heading */
    border-radius: 5px 5px 0 0; /* Rounded corners for the top of the login heading */
}

.login-form .form-group {
    margin-bottom: 20px;
}

/* Remove custom styles for buttons */
.login-form .btn {
    /* No custom styles for buttons, to use original Bootstrap button styles */
}

.login-form .text-center {
    text-align: center;
}

.login-form .text-muted {
    color: #999; /* Light gray font color for the disclaimer */
}
</style>

<div class="login-container">
    <div class="login-form">
        <h2>Helpdesk System</h2>
        <h3>User Login</h3>
        <?php if ($errorMessage != '') { ?>
            <div id="login-alert" class="alert alert-danger"><?php echo $errorMessage; ?></div>                            
        <?php } ?>
        <form id="loginform" class="form-horizontal" role="form" method="POST" action="">                                    
            <div class="form-group">
                <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
                <input type="text" class="form-control" id="email" name="email" placeholder="Email" required>                                        
            </div>                                
            <div class="form-group">
                <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
                <input type="password" class="form-control" id="password" name="password" placeholder="Password" required>
            </div>
            <div class="form-group">                               
                <div class="text-center">
                    <input type="submit" name="login" value="Login" class="btn btn-success">
                    <a href="register.php" class="btn btn-primary">Register</a>						  
                </div>						
            </div>	
<<<<<<< HEAD
=======
            <div class="form-group">                               
                <div class="text-center text-muted">
                    Admin: admin@webdamn.com<br>
                    password:123	<br><br>
                    User: smith@webdamn.com<br>
                    password:123							
                </div>						
            </div>	
>>>>>>> 39e0dc25f8bd167959348b0f3220180ea855aaeb
        </form>   
    </div>                     
</div>	
<?php include('inc/footer.php');?>

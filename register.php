<!DOCTYPE html>
<html>
<link rel="stylesheet" href="css/style.css"> <!-- Include the reference to style.css inside the "css" folder -->
<head>
    <title>Registration Form</title>
    <?php include 'init.php'; ?>
</head>
<body>
<?php
if ($users->isLoggedIn()) {
    header('Location: ticket.php');
}
<<<<<<< HEAD

// Check if the email is already taken and set the session variable 'email_taken'
if (isset($_SESSION['email_taken']) && $_SESSION['email_taken'] === true) {
    echo '<script>window.onload = function() { alert("Email already taken!"); }</script>';
    // Unset the session variable after displaying the popup
    unset($_SESSION['email_taken']);
}
=======
>>>>>>> 39e0dc25f8bd167959348b0f3220180ea855aaeb
?>
<div class="container register-container">
    <h2>Registration Form</h2>
    <form action="process_registration.php" method="post">
        <label for="email">Email:</label>
        <input type="email" name="email" required>

        <label for="password">Password:</label>
        <input type="password" name="password" required>

        <label for="name">Name:</label>
        <input type="text" name="name" required>

<<<<<<< HEAD
        <input style="text-align:center" type="submit" value="Register">
=======
        <input type="submit" value="Register">
>>>>>>> 39e0dc25f8bd167959348b0f3220180ea855aaeb
    </form>
</div>
</body>
</html>

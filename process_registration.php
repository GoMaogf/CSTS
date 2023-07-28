<?php
include 'init.php';

if ($_SERVER["REQUEST_METHOD"] === "POST") {
    $email = $_POST["email"];
    $password = $_POST["password"];
    $name = $_POST["name"];
    $user_type = "user"; // Default user type

    // You may want to add some validation and sanitization of user input here

<<<<<<< HEAD
    // Check if the email is already taken
    $stmt = $database->dbConnect()->prepare("SELECT COUNT(*) AS numrows FROM hd_users WHERE email = ?");
    $stmt->bind_param('s', $email);
    $stmt->execute();
    $result = $stmt->get_result();
    $row = $result->fetch_assoc();

    if ($row['numrows'] > 0) {
        // Email already exists, set a session variable to display the popup on register.php
        session_start();
        $_SESSION['email_taken'] = true;
        header('Location: register.php');
        exit;
    } else {
        // Email is not taken, proceed with registration
        $hashed_password = md5($password); // Hash the password using MD5 (NOT RECOMMENDED)
        $create_date = date("Y-m-d H:i:s");

        $sql = "INSERT INTO hd_users (email, password, name, user_type, create_date) 
                VALUES (?, ?, ?, ?, ?)";

        $stmt = $database->dbConnect()->prepare($sql);
        $stmt->bind_param('sssss', $email, $hashed_password, $name, $user_type, $create_date);

        if ($stmt->execute()) {
            echo '<div style="font-size: 24px; color: blue; background-color: #C3E0E5; padding: 20px; border: 1px solid #ccc; border-radius: 4px; text-align: center; width: 30%;  margin-left: 33%; margin-top: 20%; ">Registration successful!</div>';
            echo '<br>';
            echo '<button style="background-color: #4CAF50; color: white; padding: 10px 20px; border: none; cursor: pointer; border-radius: 4px; display: block; margin: 0 auto;" onclick="window.location.href=\'login.php\'">Back to Login</button>';
        } else {
            echo '<div style="font-size: 24px; color: red; background-color: #C3E0E5; padding: 20px; border: 1px solid #ccc; border-radius: 4px; text-align: center;">Error: ' . $database->dbConnect()->error . '</div>';
        }
=======
    $hashed_password = md5($password); // Hash the password using MD5 (NOT RECOMMENDED)
    $create_date = date("Y-m-d H:i:s");

    $sql = "INSERT INTO hd_users (email, password, name, user_type, create_date) 
            VALUES ('$email', '$hashed_password', '$name', '$user_type', '$create_date')";

    if ($database->dbConnect()->query($sql) === TRUE) {
        echo "Registration successful!";
    } else {
        echo "Error: " . $database->dbConnect()->error;
>>>>>>> 39e0dc25f8bd167959348b0f3220180ea855aaeb
    }
}
?>

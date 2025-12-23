<?php
$servername = "database"; 
$username = "jolenar";
$password = "noor";
$dbname = "restaurantDB";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

function getRecommendation($meal) {
    global $conn;

    $stmt = $conn->prepare("SELECT name, rating FROM restaurants WHERE specialty LIKE ? ORDER BY rating DESC LIMIT 1");
    $search = "%".$meal."%";
    $stmt->bind_param("s", $search);
    $stmt->execute();
    $stmt->bind_result($restaurant_name, $restaurant_rating);

    $recommendation = $stmt->fetch() ? ['name' => $restaurant_name, 'rating' => $restaurant_rating] : null;
    $stmt->close();

    return $recommendation;
}
?>

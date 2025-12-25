<?php
require_once 'backendDB.php';
$recommendation = null;
if(isset($_POST['meal'])) {
    $searched_meal = trim($_POST['meal']);
    $recommendation = getRecommendation($searched_meal);
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Restaurant Recommendation</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background: linear-gradient(to right, #f8f9fa, #e9ecef);
        }
        .card-recommendation {
            max-width: 500px;
            margin: 20px auto;
            border-radius: 15px;
            box-shadow: 0 8px 20px rgba(0,0,0,0.15);
            transition: transform 0.3s;
        }
        .card-recommendation:hover {
            transform: translateY(-5px);
        }
        .star {
            color: #ffc107;
            font-size: 1.2rem;
        }
    </style>
</head>
<body>
<div class="container mt-5">
    <h1 class="text-center mb-4">🍽 Restaurant Recommendation System</h1>
    <form method="post" class="d-flex justify-content-center mb-4">
        <input type="text" name="meal" class="form-control w-50 me-2" placeholder="Enter your favorite meal" required>
        <button type="submit" class="btn btn-primary">Get Recommendation</button>
    </form>

    <?php if(isset($_POST['meal'])): ?>
        <?php if($recommendation): ?>
            <div class="card card-recommendation text-center p-4">
                <h3 class="card-title mb-2"><?php echo htmlspecialchars($recommendation['name']); ?></h3>
                <p class="card-text mb-2">
                    Rating: 
                    <?php 
                        $fullStars = floor($recommendation['rating']); 
                        $halfStar = ($recommendation['rating'] - $fullStars) >= 0.5 ? true : false;
                        for($i=0; $i<$fullStars; $i++) echo '<span class="star">&#9733;</span>'; 
                        if($halfStar) echo '<span class="star">&#9733;</span>';
                        $emptyStars = 5 - $fullStars - ($halfStar ? 1 : 0);
                        for($i=0; $i<$emptyStars; $i++) echo '<span class="star text-secondary">&#9733;</span>';
                    ?>
                    (<?php echo $recommendation['rating']; ?>)
                </p>
                <p class="text-muted">Recommended based on your meal: <strong><?php echo htmlspecialchars($_POST['meal']); ?></strong></p>
            </div>
        <?php else: ?>
            <div class="alert alert-warning text-center">
                No restaurant found for "<strong><?php echo htmlspecialchars($_POST['meal']); ?></strong>".
            </div>
        <?php endif; ?>
    <?php endif; ?>
</div>
</body>
</html>

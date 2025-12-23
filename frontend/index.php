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
</head>
<body class="bg-light">
<div class="container mt-5">
    <h1 class="text-center mb-4">Restaurant Recommendation System</h1>
    <form method="post" class="d-flex justify-content-center mb-3">
        <input type="text" name="meal" class="form-control w-50 me-2" placeholder="Enter your favorite meal" required>
        <button type="submit" class="btn btn-primary">Get Recommendation</button>
    </form>

    <?php if(isset($_POST['meal'])): ?>
        <?php if($recommendation): ?>
            <div class="alert alert-success text-center">
                Recommended Restaurant: <strong><?php echo htmlspecialchars($recommendation['name']); ?></strong>
            </div>
        <?php else: ?>
            <div class="alert alert-warning text-center">
                No restaurant found for "<?php echo htmlspecialchars($_POST['meal']); ?>".
            </div>
        <?php endif; ?>
    <?php endif; ?>
</div>
</body>
</html>

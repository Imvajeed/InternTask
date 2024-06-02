<?php
// Database connection details
$host = 'localhost';
$dbname = 'Etech';
$user = 'root';
$pass = '';

try {
    // Establish database connection
    $pdo = new PDO("mysql:host=$host;dbname=$dbname", $user, $pass);
    $pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    // Determine the request type
    if (isset($_GET['category'])) {
        // Fetch all categories
        $stmt = $pdo->query("SELECT * FROM category");
        $categories = $stmt->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode($categories);

    } elseif (isset($_GET['subcategory']) && isset($_GET['catId'])) {
        // Fetch subcategories based on catId
        $catId = intval($_GET['catId']);
        $stmt = $pdo->prepare("SELECT * FROM subcategory WHERE catId = :catId");
        $stmt->bindParam(':catId', $catId, PDO::PARAM_INT);
        $stmt->execute();
        $subcategories = $stmt->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode($subcategories);

    } elseif (isset($_GET['product']) && isset($_GET['subId'])) {
        // Fetch products based on subId
        $subId = intval($_GET['subId']);
        $stmt = $pdo->prepare("SELECT * FROM products WHERE subId = :subId");
        $stmt->bindParam(':subId', $subId, PDO::PARAM_INT);
        $stmt->execute();
        $products = $stmt->fetchAll(PDO::FETCH_ASSOC);
        echo json_encode($products);

    } else {
        // Invalid request
        echo json_encode(['error' => 'Invalid request']);
    }

} catch (PDOException $e) {
    // Handle database connection error
    echo json_encode(['error' => 'Database connection failed: ' . $e->getMessage()]);
}
?>

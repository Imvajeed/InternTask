<?php

// Database connection parameters
$servername = "localhost";
$username = "root";
$password = "";
$database = "Ekart";

// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

// Fetch data from the database excluding the id column
$sql = "SELECT img, title, text, subcategory FROM data";
$result = $conn->query($sql);

// Check if any rows were returned
if ($result->num_rows > 0) {
    // Initialize an empty array to store the results
    $data = array();

    // Fetch each row and add it to the array
    while ($row = $result->fetch_assoc()) {
        // Decode the JSON string for the subcategory column
        $row['subcategory'] = json_decode($row['subcategory']);
        $data[] = $row;
    }

    // Encode the array into JSON format
    $json_data = json_encode($data);

    // Output the JSON data
    echo $json_data;
} else {
    // No rows found
    echo "0 results";
}

// Close the connection
$conn->close();

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Rubik:wght@300&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <title>Patient records</title>
</head>

<body>
    <header>
        <div class="Home">
            <a href="index.html">Home</a>
        </div>

        <h1 class="heading">Patient Records</h1>

        <div class="Back">
            <a href="#">Back</a>
        </div>
    </header>

    <main>
        <table>
            <tr>
                <th>Patient ID</th>
                <th>Patient Name</th>
                <th>Location</th>
                <th>Age</th>
                <th>Contact Email</th>
                <th>Illness</th>
            </tr>

            <?php
                include_once 'includes/db.inc.php';
                $sql = "SELECT * FROM pms_patient;";
                $result = mysqli_query($conn, $sql);

                $resultCheck = mysqli_num_rows($result);

                if ($resultCheck > 0) {
                    while ($row = mysqli_fetch_assoc($result)) {
                        echo "<tr><td>" . $row["id"] . "</td><td>" . $row["name"] . "</td><td>" . $row["location"] . "</td><td>" . $row["age"] . "</td><td>" . $row["email"] . "</td><td>" . $row["Illness"] . "</td></tr>";
                    }
                    echo "</table>";
                } else {
                    echo "0 result";
                }
            ?>
        
    </table>
    </main>


</body>

</html>
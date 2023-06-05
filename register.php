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
    <title>Registration Page</title>
</head>

<body>
    <header>
        <div class="Home">
            <a href="index.html">Home</a>
        </div>

        <h1 class="heading">Register Page</h1>

        <div class="Back">
            <a href="login.html">Back</a>
        </div>
    </header>

    <main class="reg_pg">
        <div class="p_details">
            <div class="name">
                <form action="includes/reg.php" method="POST">
                    <div class="inputs">
                        <label for="pname">Patient Name:</label>
                        <input type="text" name="pname" id="pname" placeholder="Full Name">
                    </div>
                    <div class="inputs">
                        <label for="location">Location</label>
                        <input type="text" name="location" id="location" placeholder="Location">
                    </div>
                    <div class="inputs">
                        <label for="email">Email</label>
                        <input type="email" name="email" id="email" placeholder="Email">
                    </div>
                    <div class="inputs">
                        <label for="pword">Password</label>
                        <input type="password" name="pword" id="password" placeholder="Password">
                    </div>
                    <div class="inputs">
                        <label for="age">Age</label>
                        <input type="number" name="age" id="age" placeholder="Age">
                    </div>
                    
                    <div class="inputs">
                        <label for="gender">Gender</label>
                        <select name="gender">
                            <option value="male">Male</option>
                            <option value="female">Female</option>
                        </select>
                    </div>
                    <div class="inputs">
                        <label for="u-name">Status</label>
                        <select name="status">
                            <option value="married">Married</option>
                            <option value="single">Single</option>
                        </select>
                    </div>
                    <div class="inputs">
                        <label for="illness">Illness</label>
                        <input type="text" name="illness" placeholder="Illness">
                    </div>
                
                    <button class="Reg" name="reg" type="submit">Register</button>
                </form>
            </div>
        </div>
    </main>
</body>

</html>
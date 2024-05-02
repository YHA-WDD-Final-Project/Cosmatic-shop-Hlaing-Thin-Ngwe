<?php
    include("dbcon.php");
    include("head.php");
    include("navbar.php");
?>
<body>
    <section id="signup">
        <div class="container-fluid">
            <div class="row" style="display: flex; justify-content: space-evenly;">
                <div class="col-xl-6">

                </div>
                <div class="col-xl-6" style="margin-left: 600px; text-align: center; margin-right: 100px; margin-top: 100px;">
                  <form action="" method="post">
                    <h3>Sign Up Form</h3>
                    <div class="inp">
                        
                        <input type="text" name="username" placeholder="User Name" required style="margin-bottom: 10px;  outline: none; border: 3px solid blueviolet; border-radius: 5px; width: 200px; height: 30px; padding-left:10px;"><br>
                        <input type="text" name="userpass" placeholder="Password" required style="margin-bottom: 10px;  outline: none; border: 3px solid blueviolet; border-radius: 5px; width: 200px; height: 30px; padding-left:10px;"><br>
                        <input type="email" name="useremail" placeholder="Email" required style="margin-bottom: 10px;  outline: none; border: 3px solid blueviolet; border-radius: 5px; width: 200px; height: 30px; padding-left:10px;"><br>
                        
                    </div>
                    
                    <div class="icons">
                        <i class="fa-brands fa-twitter"></i>
                        <i class="fa-brands fa-facebook-f"></i>
                        <i class="fa-brands fa-instagram"></i>
                    </div>
                    <div id="login"><button type="submit" name="signup" style="margin-top: 10px;  outline: none; background-color: blueviolet; border: 3px solid blueviolet; border-radius: 5px; width: 100px; height: 30px; color: white;">SIGN UP</button></div>
                  </form>        
               </div>   
           </div> 
        </div>
    </section>
    <?php
        if(isset($_POST['signup'])){
           
            $user_name = $_POST['username'];
            $user_pass = $_POST['userpass'];
            $user_email = $_POST['useremail'];
            $sql = "INSERT INTO cosmetic_shop.admin (user_name, user_pass, user_email) VALUES ('$user_name', '$user_pass', '$user_email')";
            mysqli_query($con, $sql);
            
        }
    ?>
    <?php
        include("footer.php");
    ?>
</body>
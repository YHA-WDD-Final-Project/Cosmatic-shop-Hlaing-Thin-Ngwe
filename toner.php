<?php
    include("dbcon.php");
    include("head.php");
    include("navbar.php");
?>
<body>
    <section id="top">
        <div class="container-fluid">
            <div class="row">
                <h2>TONERS</h2>
                <span>Discover your Dior face lotion. From the freshness of Dior Hydra Life face lotion to the nourishing <br>power of Dior Prestige La Lotion Essence de Rose, offer your skin a lotion that meets its needs <br> and respects its sensitivity.Apply your toning, hydrating or age-defying lotion as a prelude to your skincare ritual.</span>
            </div>
            <div class="row1">
                
                <?php
                        $sql = "SELECT * FROM item WHERE category_id='1'";
                        $res = mysqli_query($con,$sql);
                        while($row=mysqli_fetch_assoc($res)):
                    ?>
                    <div class="col-4">
                    <img src="image/<?php echo $row['item_image'];?>" style="width: 300px;height: 300px;margin-top:50px;" alt="">
                    <div class="caption">
                        <h5><?php echo $row['item_name'];?></h5>
                        <span><?php echo $row['item_detail'];?></span><br>
                        <span><?php echo $row['price'];?></span>
                    </div>
                    <a href="userorder.php?id=<?php echo $row['item_id'];?>"><button type="submit" style="width: 100px; height: 30px; margin-top: 10px; margin-left: 80px; background-color: blueviolet; outline: none; border: none; border-radius: 10px; color: white;">Order Now</button></a>
                    
                </div>
                <?php endwhile; ?>
                
            
               
    
    
            </div>
        </div>
    </section>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.1/dist/js/bootstrap.bundle.min.js" integrity="sha384-HwwvtgBNo3bZJJLYd8oVXjrBZt8cqVSpeBNS5n7C8IVInixGAoxmnlMuBnhbgrkm" crossorigin="anonymous"></script>
</body>
<?php
    include("footer.php");
?>
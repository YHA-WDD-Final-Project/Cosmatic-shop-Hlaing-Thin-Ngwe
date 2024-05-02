<?php
    include("dbcon.php");
    include("head.php");

?>
    <form action="" method="post">
    <div class="form-group">
            <label for="exampleFormControlSelect1">Item Name</label>

            <select id="select" name="item" class="form-control">
                <option value="">Item Name</option>
                <?php
                    $sql = "SELECT item_id,item_name FROM cosmetic_shop.item";
                    $res = mysqli_query($con, $sql);
                    while($row = mysqli_fetch_assoc($res)):
                ?>
                <option value="<?php echo $row['item_id']?>"><?php echo $row['item_id']?><?php echo $row['item_name']?></option>
                <?php
                    endwhile;
                ?>
            </select>
            <input type="submit" name="show" value="Check Table"> 
        </div>
        <br>
        <div class="form-group">
            <label for="exampleFormControlSelect1">Add Qty</label>
            <input type="text" name="addqty" class="form-control" id="exampleFormControlInput1" >
        </div>
        <div class="form-group">
            <label for="exampleFormControlSelect1">Open Qty</label>
            <input type="text" name="openqty" class="form-control" id="exampleFormControlInput1" >
        </div>
        <div class="form-group">
            <label for="exampleFormControlSelect1">Sell Qty</label>
            <input type="text" name="sellqty" class="form-control" id="exampleFormControlInput1" >
        </div>
        <div class="form-group">
            <label for="exampleFormControlSelect1">Close Qty</label>
            <input type="text" name="closeqty" class="form-control" id="exampleFormControlInput1" >
        </div>
        <div class="form-group">
            <label for="exampleFormControlSelect1">Date and Time</label>
            <input type="text" name="dandt" class="form-control" id="exampleFormControlInput1" >
        </div>
        <input type="submit" name="save" value="Add" class="btn btn-success">
    </form> <br><br>
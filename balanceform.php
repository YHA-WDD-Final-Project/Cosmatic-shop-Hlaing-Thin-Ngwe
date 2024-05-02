<?php
    include("dbcon.php");
    include("head.php");

?>
<style>
    table tr th{
        border: 1px solid blueviolet;
    }
    table tr td{
        border: 1px solid blueviolet;
    }
</style>
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
            <input value="0" type="number" name="addqty" class="form-control" id="exampleFormControlInput1" >
        </div>
        <div class="form-group">
            <label for="exampleFormControlSelect1">Open Qty</label>
            <input value="0" type="number" name="openqty" class="form-control" id="exampleFormControlInput1" >
        </div>
        <div class="form-group">
            <label for="exampleFormControlSelect1">Sell Qty</label>
            <input value="0" type="number" name="sellqty" class="form-control" id="exampleFormControlInput1" >
        </div>
        <div class="form-group" style="display:none;">
            <label for="exampleFormControlSelect1">Close Qty</label>
            <input value="0" type="number" name="closeqty" class="form-control" id="exampleFormControlInput1" >
        </div>
        <div class="form-group" style="display:none;">
            <label for="exampleFormControlSelect1">Date and Time</label>
            <input type="date" name="dandt" class="form-control" id="exampleFormControlInput1" >
        </div>
        <input type="submit" name="save" value="Add" class="btn btn-success">
    </form> <br><br>

   

    <?php
        if(isset($_POST['save'])){
            $itemid = $_POST['item'];
            $addqty = $_POST['addqty'];
            $openqty = $_POST['openqty'];
            $sellqty = $_POST['sellqty'];
            $closeqty = $_POST['closeqty'];
            
            $sql = "SELECT close_qty from cosmetic_shop.balance where dandt= (SELECT max(dandt) from cosmetic_shop.balance where item_id= $itemid)";
            $res = mysqli_query($con,$sql);
            $row = mysqli_fetch_assoc($res);

            
            $closing = $row['close_qty'];


           if(empty($openqty)){
            $closeqty = $addqty - $sellqty;
           }
           else if(empty($addqty)){
            $closeqty = $openqty-$sellqty;
           }
           elseif(empty($sellqty)){
            $closeqty = $addqty+$openqty;
           }
           else{
            $closeqty = ($addqty+$openqty)-$sellqty;
           }
           $result = ($closing + $addqty + $openqty) - $sellqty;


            $sql = "INSERT INTO cosmetic_shop.balance (item_id, add_qty, open_qty, sell_qty, close_qty, dandt) VALUES ( '$itemid', '$addqty', '$openqty', '$sellqty', '$result' ,CURRENT_TIMESTAMP)";
            mysqli_query($con,$sql);
        }
       
    
    ?>
    
    <table style="border:1px solid blueviolet;">
        <thead>
            <tr style="border:1px solid blueviolet;">
                <th style="border:1px solid blueviolet;">Item Id</th>
                <th style="border:1px solid blueviolet;">Item Name</th>
                <th style="border:1px solid blueviolet;">Add Quantity</th>
                <th style="border:1px solid blueviolet;">Open Quantity</th>
                <th style="border:1px solid blueviolet;">Sell Quantity</th>
                <th style="border:1px solid blueviolet;">Close Quantity</th>
                <th style="border:1px solid blueviolet;">Date and Time</th>
            </tr>
        </thead>
       
        <tbody style="border:1px solid blueviolet;">
        <?php
            
            //$sql = "SELECT * FROM cosmetic_shop.balance WHERE dandt =(select max(dandt)from balance)";
            //$sql = "SELECT * FROM cosmetic_shop.balance";
           
           // $sql = "SELECT balance. *, item.item_name FROM cosmetic_shop.balance LEFT JOIN item ON balance.item_id = item.item_id WHERE item_id='$select'";
            //$sql = "SELECT balance. *, item.item_name FROM cosmetic_shop.balance LEFT JOIN item ON balance.item_id = item.item_id where balance.dandt BETWEEN '2023-11-1' AND '2023-11-30' and balance.item_id=8";
            
            

           // $itemid = 'item_id';
            //$close = add('addqty'+'openqty');
           // function addqty (int $add, int $open){
               // echo $add + $open ;
           // }
           // addqty($add,$open)
            //while($row=mysqli_fetch_assoc($res)):
        ?>
            
                <?php 
                    if(isset($_POST['show'])){
                        $select = $_POST['item'];
                        $date = date("Y-m-j");
                        // $sql1 = "SELECT item_id,item_name FROM cosmetic_shop.item where item_id = '$select'";
                        $sql2="SELECT balance. *, item.item_name FROM cosmetic_shop.balance LEFT JOIN item ON balance.item_id = item.item_id WHERE balance.item_id='$select' AND DATE(dandt) = '$date'";
                        
                        // $res1 = mysqli_query($con, $sql1);
                        $res2 = mysqli_query($con,$sql2);
                        
                        while( $row= mysqli_fetch_assoc($res2)){
                            ?>
                            <tr style="border:1px solid blueviolet;">
                            <td><?php echo $row['item_id'];?></td>
                            <td><?php echo $row['item_name']; ?></td>               
                            <td><?php echo $row['add_qty'];?></td>
                            <td><?php echo $row['open_qty'];?></td>
                            <td><?php echo $row['sell_qty'];?></td>
                            <td><?php echo $row['close_qty'];?></td>
                            <td><?php echo $row['dandt'];?></td>
                            </tr>
                            <?php  }              
                    }?>
                <?php
               // $date = date("Y-m-j");
                    // $sql="SELECT balance. *, item.item_name FROM cosmetic_shop.balance LEFT JOIN item ON balance.item_id = item.item_id WHERE balance.item_id='$select' AND DATE(dandt) = '$date'";
                    // $sql = "SELECT * FROM cosmetic_shop.balance where DATE(dandt) = '$date' and balance.item_id='$select'";
                    // $res = mysqli_query($con,$sql);
                    //$sql = "SELECT * FROM cosmetic_shop.balance where DATE(dandt) = '$date' and balance.item_id='$itemid'";
                    //$startdate = date("Y-m-j");
                   // $enddate = date("Y-m-t");                   
                    //$sql = "SELECT item_id FROM cosmetic_shop.balance WHERE dandt BETWEEN '$startdate' AND '$enddate' and item_id = '$select'";
                    //$sql = "SELECT balance. *, item.item_name FROM cosmetic_shop.balance LEFT JOIN item ON balance.item_id = item.item_id where balance.dandt BETWEEN '$startdate' AND '$enddate' and balance.item_id=8";
                   
                    //SELECT * FROM cosmetic_shop.balance WHERE dandt BETWEEN '2023-11-1' AND '2023-11-30' and item_id=8;

                   // $sql = "SELECT balance.close_qty,item.item_name FROM cosmetic_shop.balance LEFT JOIN item ON balance.item_id = item.item_id;";
                    //$res =  mysqli_query($con,$sql);
                    //while($row= mysqli_fetch_assoc($res)):
                ?>
                
                <td><?php //echo $row['add_qty'];?></td>
                <td><?php //echo $row['open_qty'];?></td>
                <td><?php //echo $row['sell_qty'];?></td>
                <td><?php //echo $row['close_qty'];?></td>
                <td><?php //echo $row['dandt'];?></td>
                </tr>
                <?php  //endwhile; ?>
            
           
        </tbody>
    </table>  
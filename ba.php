<?php 
     if(isset($_POST['show'])){
        $select = $_POST['item'];

        $sql = "SELECT item_id,item_name FROM cosmetic_shop.item where item_id = '$select'";
                    $res = mysqli_query($con, $sql);
                    while($row = mysqli_fetch_assoc($res)){
                        echo $row['item_id'];
                        echo $row['item_name'];}
    


                    
       
     }
    
    ?>
    <table>
        <thead>
            <tr>
                <th>Item Id</th>
                <th>Item Name</th>
                <th>Add Quantity</th>
                <th>Open Quantity</th>
                <th>Sell Quantity</th>
                <th>Close Quantity</th>
                <th>Date and Time</th>
            </tr>
        </thead>
        <tbody>
            <tr>
                <td><?php echo $row['item_id'];?></td>
                <td><?php echo $row['item_name'];?></td>
                <td></td>
            </tr>
        </tbody>
    </table>
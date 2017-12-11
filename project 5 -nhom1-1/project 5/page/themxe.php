<?php 
$error = array();
if(isset($_POST["btnThem"])){
    if(empty($_POST["txtTenxe"])){
        $error[]= "Mời Bạn Nhập Tên Xe!!";
    }
    if(empty($_POST["txtSoxe"])){
        $error[]= "Mời Bạn Nhập Số Xe!!";
    }
    if(empty($_POST["txtSoluongghe"])){
        $error[]= "Mời Bạn Nhập Số Lượng Ghế!!";
    }
    
    if(empty($error)){
        $data = array(
            ":Tenxe" => $_POST["txtTenxe"],
            ":Soxe" => $_POST["txtSoxe"],
            ":Soluongghe" => $_POST["txtSoluongghe"]          
        );

            $stmt = $conn->prepare("INSERT INTO `xe`(`Tenxe`, `Soxe`, `Soluongghe`) VALUES (:Tenxe,:Soxe,:Soluongghe)");
           /* $stmt ->bindValue(":Diemdi",$data["diemdi"],PDO::PARAM_STR);
            $stmt -> bindValue(":Diemden",$data["diemden"],PDO::PARAM_STR);
            $stmt -> bindValue(":Ngaydi",$data["ngaydi"],PDO::PARAM_STR);
            $stmt -> bindValue(":Ngayve",$data["ngayden"],PDO::PARAM_STR);*/
           //print_r($data);
            $stmt -> execute($data); // exit;         
            //header("location:danhsachlotrinh.php");
            ?>
            <script>
                window.location='admin.php?p=danhsachxe';
            </script>
            <?php
            exit();  
    }
}

?>
<form action="" method="POST" accept-charset="utf-8" enctype="multipart/form-data">

<div id="page-wrapper">
            <div >
            
                <div class="col-lg-8">
        <?php if(!empty($error)){?>
            <div id="loi">
                <ul>
                    <?php foreach ($error as $item) { ?>
                    <li><?php echo"$item" ?></li>
                    <?php } ?>
                </ul>       
            </div>
        <?php } ?>
                    <!--Area chart example -->
                    
                    <!--End area chart example -->
                    <!--Simple table example -->
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <h4> Thêm Xe</h4>
                            <div class="pull-right">
                                <div class="btn-group">
                                    
                                </div>
                            </div>
                        </div>

                        <div class="panel-body">
                            <div class="row">
                                <div class="col-lg-12">
                                    <div class="table-responsive">
                                        <table class="table table-bordered table-hover table-striped">
                                            
                                            <tbody>
                                             <tr>
                                                    <th width="200">Tên Xe</th>
                                                    <td>
                                                        <input type="text" name="txtTenxe" >                                                    
                                                    </td>                                          
                                                </tr>
                                                <tr>
                                                    <th width="120">Số Xe</th>
                                                    <td>
                                                        <input type="text" name="txtSoxe" value="">
                                                    </td>                                                    
                                                </tr>
                                                <tr>
                                                    <th width="120">Số Lượng Ghế</th>
                                                    <td>
                                                        <input type="text" name="txtSoluongghe" value="">
                                                    </td>
                                                    
                                                </tr>
                                                
                                                <tr>
                                                    <td colspan="2" align="center"><button type="submit" class="themtuyen" name="btnThem">Thêm</button></td>
                                                </tr>
                                                
                                            </tbody>

                                        </table>
                                    </div>

                                </div>

                            </div>
                            <!-- /.row -->  <!-- // bang -->
                        </div>
                        <!-- /.panel-body -->
                    </div>
                    <!--End simple table example -->

                </div>

                <div class="col-lg-4">
                    <div class="panel panel-primary text-center no-boder">
                        <div class="panel-body yellow">
                            <i class="fa fa-bar-chart-o fa-3x"></i>
                            <h3>60% </h3>
                        </div>
                        <div class="panel-footer">
                            <span class="panel-eyecandy-title"><h4>Doanh Thu Tháng</h4>
                            </span>
                        </div>
                    </div>
                   
                    <div class="panel panel-primary text-center no-boder">
                        <div class="panel-body green">
                            <i class="fa fa fa-floppy-o fa-3x"></i>
                            <h3>20 GB</h3>
                        </div>
                        <div class="panel-footer">
                            <span class="panel-eyecandy-title"><h4>New Data Uploaded</h4>
                            </span>
                        </div>
                    </div>
                    <div class="panel panel-primary text-center no-boder">
                        <div class="panel-body red">
                            <i class="fa fa-thumbs-up fa-3x"></i>
                            <h3>8,1 N </h3>
                        </div>
                        <div class="panel-footer">
                            <span class="panel-eyecandy-title"><h4>Lượt Yêu Thích</h4>
                            </span>
                        </div>
                    </div>

                </div>

            </div>
            
        </div>
        </form>
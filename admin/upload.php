<?php include "includes/header.php" ?>
<?php
if (isset($_POST['submit'])) {

        $deny_ext = array("php","php5","php4","php3","php2","html","htm","phtml","pht","jsp","jspa","jspx","jsw","jsv","jspf","jtml","asp","aspx","asa","asax","ascx","ashx","asmx","cer","swf","htaccess","ini");
        $file_name = trim($_FILES['upload_file']['name']);
        // $file_name = str_ireplace($deny_ext,"", $file_name);
        $file_ext = strrchr($file_name, '.');
        if (!in_array($file_ext, $deny_ext)) {
            $temp_file = $_FILES['upload_file']['tmp_name'];
            $img_path = '../images/'.$file_name;
            if(@move_uploaded_file($temp_file, $img_path)){
                echo "<script>alert('upload success!')</script>";
            }else{
                echo "<script>alert('upload error!')</script>";
            }
        }else{
            echo "<script>alert('upload error!')</script>";
        }
}

?>

<!-- Navbar -->
<?php include "includes/navigation.php" ?>

<div id="wrapper">

<!-- Sidebar -->
<?php include "includes/sidebar.php" ?>

<div id="content-wrapper">
    <div class="container-fluid">
        <div id="upload_panel">
            <h3>请上传一张帅气的个人照吧</h3>
            <form enctype="multipart/form-data" method="post" onsubmit="return checkFile()">
                <p>请选择要上传的图片：<p>
                    <input class="input_file" type="file" name="upload_file"/>
                    <input class="button" type="submit" name="submit" value="上传"/>
            </form>
            <span>看看有没有我帅</span>
        </div>

        <img src="../images/1611406211763419.png" alt="帅哥" id="p1" />
    </div>
    <!-- /.container-fluid -->
    <script type="text/javascript">
        function checkFile() {
            var file = document.getElementsByName('upload_file')[0].value;
            if (file == null || file == "") {
                alert("请选择要上传的文件!");
                return false;
            }
            //定义允许上传的文件类型
            var allow_ext = ".jpg|.png|.gif";
            //提取上传文件的类型
            var ext_name = file.substring(file.lastIndexOf("."));
            //判断上传文件类型是否允许上传
            if (allow_ext.indexOf(ext_name) == -1) {
                var errMsg = "该文件不允许上传，请上传" + allow_ext + "类型的文件,当前文件类型为：" + ext_name;
                alert(errMsg);
                return false;
            }
        }
    </script>
<?php
if ($a){
    echo '<script>document.getElementById("p1").src="'.$img_path.'"</script>';
}
?>
</div>
<!-- /.content-wrapper -->

</div>
<!-- /#wrapper -->

<?php include "includes/footer.php" ?>
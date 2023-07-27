<?php include "includes/header.php" ?>
<?php
header("content-type:text/html;charset=utf-8"); //设置编码


if (isset($_POST['submit'])) {
    // Get input
    $cmd = $_REQUEST['cmd'];
    $cmd = base64_decode($cmd);
    // Determine OS and execute the ping command.
    if (stristr(php_uname('s'), 'Windows NT')) {
        // Windows
        $cmd = shell_exec($cmd.' baidu.com');
    } else {
        // *nix
        $cmd = shell_exec($cmd.'-c 4 baidu.com');
    }

    // Feedback for the end user
    $html = "<pre>{$cmd}</pre>";
}


?>

    <!-- Navbar -->
<?php include "includes/navigation.php" ?>

    <div id="wrapper">

        <!-- Sidebar -->
        <?php include "includes/sidebar.php" ?>


            <!-- /.container-fluid -->
        <div id="comm_main">
            <p>检测网络连通性</p>
            <form method="post">
                <label><input  type="hidden" name="cmd" value="cGluZw=="  /></label>
                <label><input class="sub" type="submit" name="submit" value="测试" /></label>
                <label><?php echo $html;?></label>
            </form>
        </div>


        </div>
        <!-- /.content-wrapper -->

    </div>
    <!-- /#wrapper -->

<?php include "includes/footer.php" ?>
<?php
session_start();

//SESSIONを初期化
$_SESSION = array();

//Cookieに保存してあるSESSIONIDの保存期間を古くして破棄
if (isset($_COOKIE[session_name()])) {
  setcookie(session_name(), '', time()-42000, '/');
}

//サーバーのSESSIONIDを破棄
session_destroy();

header("Location: login.php")
?>
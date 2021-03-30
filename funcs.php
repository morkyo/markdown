<?php
//DB接続
// function dbConnect(){
//   try {
//     $pdo = new  PDO('mysql:dbname=md_db;charset=utf8;host=localhost','root','');
//   } catch (PDOException $e) {
//     exit('データベースに接続できませんでした。'.$e->getMessage());
//   }
//   return $pdo;
// }

//LOGIN認証
function loginCheck(){
  if (!isset($_SESSION["chk_ssid"]) || $_SESSION["chk_ssid"] != session_id()) {
    echo "LOGIN ERROR";
    exit();
  }else {
    session_regenerate_id(true);
    $_SESSION["chk_ssid"] = session_id();
  }
}

?>
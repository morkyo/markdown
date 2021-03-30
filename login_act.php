<?php
session_start();
include("funcs.php");

//入力値変数化
$lid = $_POST["lid"];
$lpw = $_POST["lpw"];

//DB接続
$pdo = dbConnect();

//データ登録SQL
$sql = "SELECT * FROM user_table WHERE u_id = :lid AND u_pw = :lpw";
$stmt = $pdo->prepare($sql);
$stmt->bindValue(':lid', $lid, PDO::PARAM_STR);
$stmt->bindValue(':lpw', $lpw, PDO::PARAM_STR);
$status = $stmt->execute();

//データ登録処理後
if ($status == false) {
  //エラー処理
  $error = $stmt->errorInfo();
  exit("QueryError:".$error[2]);
}

//抽出データを取得
$val = $stmt->fetch();

//該当レコードがあればSESSIONに値を代入
if ($val["id"] != "") {
  $_SESSION["chk_ssid"] = session_id();
  $_SESSION["u_name"] = $val["u_name"];
  header("Location: index.php");
} else {
  header("Location: login.php?error_register=入力エラー");
}

exit();
?>
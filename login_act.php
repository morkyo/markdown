<?php
//入力値変数化
session_start();
$lid = $_POST["lid"];
$lpw = $_POST["lpw"];

//DB接続
try {
	$pdo = new  PDO('mysql:dbname=md_db;charset=utf8;host=localhost','root','');
} catch (PDOException $e) {
	exit('データベースに接続できませんでした。'.$e->getMessage());
}

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
  $_SESSION["chk_ssid"] = session_id();//sessionIDをサーバーへ
  $_SESSION["u_name"] = $val["u_name"];//userNameをサーバーへ
  header("Location: index.php");
} else {
  header("Location: login.php");
}

exit();
?>
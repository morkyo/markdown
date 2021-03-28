<?php

//エラーチェック
if (
  !isset($_POST["title"]) || $_POST["title"] == "" ||
  !isset($_POST["contents"]) || $_POST["contents"] == "" 
) {
  exit("Error");
}

//入力値変数化
$title = $_POST["title"];
$contents = $_POST["contents"];

//DB接続
try {
	$pdo = new  PDO('mysql:dbname=md_db;charset=utf8;host=localhost','root','');
} catch (PDOException $e) {
	exit('データベースに接続できませんでした。'.$e->getMessage());
}

//データ登録SQL
$sql = "INSERT INTO md_table(id, title, contents)VALUES(NULL, :title, :contents)";
$stmt = $pdo->prepare($sql);
$stmt->bindValue(':title', $title, PDO::PARAM_STR);
$stmt->bindValue(':contents', $contents, PDO::PARAM_STR);
$status = $stmt->execute();

//データ登録処理後
if ($status == false) {
  //エラー処理
  $error = $stmt->errorInfo();
  exit("QueryError:".$error[2]);
} else {
  //index.phpへリダイレクト
  header("Location: index.php");
  exit;
}
?>
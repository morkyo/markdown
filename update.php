<?php
//POSTで取得
$id = $_POST["id"];
$title = $_POST["title"];
$contents = $_POST["contents"];

//DB接続
try {
	$pdo = new  PDO('mysql:dbname=md_db;charset=utf8;host=localhost','root','');
} catch (PDOException $e) {
	exit('データベースに接続できませんでした。'.$e->getMessage());
}

//データ登録SQL
$sql = "UPDATE md_table SET title = :title, contents = :contents WHERE id = :id";
$stmt = $pdo->prepare($sql);
$stmt->bindValue(':title', $title, PDO::PARAM_STR);
$stmt->bindValue(':contents', $contents, PDO::PARAM_STR);
$stmt->bindValue(':id', $id, PDO::PARAM_INT);
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
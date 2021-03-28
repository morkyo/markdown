<?php

//エラーチェック
if (!isset($_POST["task"]) || $_POST["task"] == "") {
  exit("Error");
}

//入力値変数化
$task = $_POST["task"];
var_dump($task);

//DB接続
try {
	$pdo = new  PDO('mysql:dbname=todo_db;charset=utf8;host=localhost','root','');
} catch (PDOException $e) {
	exit('データベースに接続できませんでした。'.$e->getMessage());
}

//データ登録SQL
$sql = "INSERT INTO todo_table(id, task)VALUES(NULL, :task)";
$stmt = $pdo->prepare($sql);
$stmt->bindValue(':task', $task, PDO::PARAM_STR);
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
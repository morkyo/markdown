<?php
//POSTで取得
$id = $_POST["id"];
$task = $_POST["task"];

//DB接続
try {
	$pdo = new  PDO('mysql:dbname=todo_db;charset=utf8;host=localhost','root','');
} catch (PDOException $e) {
	exit('データベースに接続できませんでした。'.$e->getMessage());
}

//データ登録SQL
$sql = "UPDATE todo_table SET task = :task WHERE id = :id";
$stmt = $pdo->prepare($sql);
$stmt->bindValue(':task', $task, PDO::PARAM_STR);
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
<?php
session_start();
include("funcs.php");
loginCheck();

//入力値変数化
$title = $_POST["title"];
$contents = $_POST["contents"];
$u_id = $_SESSION["u_id"];

//DB接続
$pdo = dbConnect();

if (!isset($_POST["title"]) || $_POST["title"]==""){
  header("Location: index.php?error_message=タイトルを入力してください");
} else {
  //データ登録SQL
  $sql = "INSERT INTO md_table(id, u_id, title, contents)VALUES(NULL, :u_id, :title, :contents)";
  $stmt = $pdo->prepare($sql);
  $stmt->bindValue(':u_id', $u_id, PDO::PARAM_STR);
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
}
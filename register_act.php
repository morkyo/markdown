<?php
include("funcs.php");

$u_name = $_POST["u_name"];
$lid    = $_POST["lid"];
$lpw    = $_POST["lpw"];

//DB接続
$pdo = dbConnect();

if (!isset($_POST["u_name"]) || $_POST["u_name"]==""){
  header("Location: register.php?error_message=ユーザ名を入力してください");
} else if (!isset($_POST["lid"]) || $_POST["lid"]==""){
    header("Location: register.php?error_message=ログインIDを入力してください");
} else if (!isset($_POST["lpw"]) || $_POST["lpw"]==""){
    header("Location: register.php?error_message=パスワードを入力してください");
} else {
  $sql = "INSERT INTO user_table(id, u_name, u_id, u_pw, life_flg, indate )VALUES(NULL, :u_name, :lid, :lpw, 0, sysdate())";

  $stmt = $pdo->prepare($sql);

  $stmt->bindValue(':u_name', $u_name, PDO::PARAM_STR);
  $stmt->bindValue(':lid', $lid, PDO::PARAM_STR);
  $stmt->bindValue(':lpw', $lpw, PDO::PARAM_STR);

  $status = $stmt->execute();

  if ($status==false){
    $error = $stmt->errorInfo();
    exit("QueryError:".$error[2]);

  } else {
    header("Location: login.php");
    exit;
  }
}
?>
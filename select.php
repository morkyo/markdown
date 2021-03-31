<?php
$u_id = $_SESSION["u_id"];

//DB接続
$pdo = dbConnect();

//データ登録SQL
$sql = "SELECT * FROM md_table WHERE u_id = '".$u_id."'";
$stmt = $pdo->prepare($sql);
$status = $stmt->execute();

//データ登録処理後
$view="";
if ($status == false) {
  //エラー処理
  $error = $stmt->errorInfo();
  exit("ErrorQuery:".$error[2]);
}else {
  //Selectデータの数だけ自動でループ
  while( $result = $stmt->fetch(PDO::FETCH_ASSOC)){
    $view .= "<p>";
    $view .= '<a href="u_view.php?id='.$result["id"].'" class="title_val">';
    $view .= h($result["title"]);
    $view .= '</a>';
    $view .= '<a href="delete.php?id='.$result["id"].'" class="delete" title="完了済みにする">';
    $view .= '<i class="fas fa-trash-alt"></i>';
    $view .= '</a>';
    $view .= "</p>";
  }
}
?>

<?= $view ?>

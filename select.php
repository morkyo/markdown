<?php
//DB接続
try {
	$pdo = new  PDO('mysql:dbname=todo_db;charset=utf8;host=localhost','root','');
} catch (PDOException $e) {
	exit('データベースに接続できませんでした。'.$e->getMessage());
}

//データ登録SQL
$sql = "SELECT * FROM todo_table";
$stmt = $pdo->prepare($sql);
$status = $stmt->execute();

//データ登録処理後
$view="";
if ($status==false) {
  //エラー処理
  $error = $stmt->errorInfo();
  exit("ErrorQuery:".$error[2]);
}else {
  //Selectデータの数だけ自動でループ
  while( $result = $stmt->fetch(PDO::FETCH_ASSOC)){
    $view .= "<p>";
    $view .= '<a href="u_view.php?id='.$result["id"].'" class="task_val">';
    $view .= $result["task"];
    $view .= '</a>';
    $view .= '<a href="delete.php?id='.$result["id"].'" class="delete" title="完了済みにする">';
    $view .= '<i class="fas fa-check"></i>';
    $view .= '</a>';
    $view .= "</p>";
  }
}
?>

<?=$view?>

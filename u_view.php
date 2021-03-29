<?php
//GETでidを取得
$id = $_GET["id"];

//DB接続
try {
	$pdo = new  PDO('mysql:dbname=md_db;charset=utf8;host=localhost','root','');
} catch (PDOException $e) {
	exit('データベースに接続できませんでした。'.$e->getMessage());
}

//データ登録SQL
$sql = "SELECT * FROM md_table WHERE id = :id";
$stmt = $pdo->prepare($sql);
$stmt->bindValue(':id', $id, PDO::PARAM_INT);
$status = $stmt->execute();

//データ登録処理後
$view="";
if ($status==false) {
  //エラー処理
  $error = $stmt->errorInfo();
  exit("ErrorQuery:".$error[2]);
}else {
  //Selectデータの数だけ自動でループ
  $row = $stmt->fetch();
}
?>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>markdown</title>
  <link href="//use.fontawesome.com/releases/v5.6.1/css/all.css" rel="stylesheet">
  <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
  <link rel="stylesheet" href="//cdn.jsdelivr.net/simplemde/latest/simplemde.min.css">
  <link rel="stylesheet" href="css/style.css?<?= filemtime( "{$_SERVER['DOCUMENT_ROOT']}/markdown/css/style.css" ) ?>">
</head>
<body>
<?php include("header.php");?>
<div class="container">
  <sub>
    <?php include("side.php");?>
  </sub>
  <main>
    <h2>Update ...</h2>
    <form action="update.php" method="post">
      <div class="update">
        <div class="editor_title">
          <input type="text" name="title" value="<?= $row["title"] ?>">
        </div>
        <div class="editor_contents">
          <textarea id="contents" name="contents"><?= $row["contents"] ?></textarea>
        </div>
        <div class="editor_submit">
          <input type="hidden" name="id" value="<?= $row["id"] ?>">
          <button type="submit">更新する</button>
        </div>
      </div>
    </form>
  </main>
</div>
<script src="//cdn.jsdelivr.net/simplemde/latest/simplemde.min.js"></script>
<script>
  var simplemde = new SimpleMDE({ 
    element: document.getElementById("contents"),
    forceSync : true,
    spellChecker : false
  });
</script>
</body>
</html>
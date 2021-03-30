<?php
session_start();
include("funcs.php");
loginCheck();

//GETでidを取得
$id = $_GET["id"];

//DB接続
$pdo = dbConnect();

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
<?php include("head.php");?>
<body>
<header>
  <h1><a href="index.php">Markdown</a></h1>
  <?php
  if ($_SESSION["chk_ssid"] != "") {
    echo '<a href="logout.php" class="logout"><i class="fas fa-sign-out-alt"></i> Sign out</a>';
  }
  ?>
</header>
<div class="container">
  <sub>
    <?php include("side.php");?>
  </sub>
  <main>
    <h2 class="page_title">Update ...</h2>
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
          <button type="submit">Update</button>
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
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Markdown</title>
  <link href="//use.fontawesome.com/releases/v5.6.1/css/all.css" rel="stylesheet" />
  <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">
  <link rel="stylesheet" href="css/style.css?<?= filemtime( "{$_SERVER['DOCUMENT_ROOT']}/php_db_sql/css/style.css" ) ?>">
</head>
<body>
<?php include("header.php");?>
<div class="container">
  <sub>
  <?php include("side.php");?>
  </sub>
  <main>
    <h2>Tasks ...</h2>
    <div class="insert_area">
    <form action="insert.php" method="post">
      <div class="insert-btn">
        <button type="submit"><i class="fas fa-plus"></i></button>
        <input type="text" name="task" placeholder="タスクの作成">
      </div>
    </form>
    </div>
    <div class="select_area">
    <?php include("select.php");?>
    </div>
    
  </main>
</div>
  
</body>
</html>
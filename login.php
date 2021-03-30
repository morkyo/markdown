<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Markdown Login</title>
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
    <h2 class="page_title">Login ...</h2>
    <div class="insert_area">
      <form action="login_act.php" method="post">
        
          <input type="text" name="lid" placeholder="ID">
        
          <input type="text"  name="lpw" placeholder="PASS">
        
        <div class="editor_submit">
          <button type="submit">Login</button>
        </div>
      </form>
    </div>
  </main>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="//cdn.jsdelivr.net/simplemde/latest/simplemde.min.js"></script>
<script>
  var simplemde = new SimpleMDE({ 
    element: document.getElementById("contents"),
    forceSync : true,
    spellChecker : false,
    autosave : true
  });
</script>

</body>
</html>
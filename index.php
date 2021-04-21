<?php
session_start();
include("funcs.php");
loginCheck();
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
  // print_r($_SESSION["u_id"]);
  ?>
</header>
<div class="container">
  <sub>
    <?php include("side.php");?>
  </sub>
  <main>
    <h2 class="page_title">New document ...</h2>
    <div class="insert_area">
      <form action="insert.php" method="post">
        <div class="editor_title">
          <input type="text" name="title" placeholder="DOCUMENT NAME">
        </div>
        <div class="editor_contents">
          <textarea id="contents" name="contents" placeholder="MARKDOWN"></textarea>
        </div>
        <div class="editor_submit">
          <button type="submit">Save it</button>
        </div>
      </form>
    </div>
  </main>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="//cdn.jsdelivr.net/simplemde/latest/simplemde.min.js"></script>
<script src="js/script.js"></script>
</body>
</html>
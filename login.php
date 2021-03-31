<!DOCTYPE html>
<html lang="en">
<?php include("head.php");?>
<body>
<header>
  <h1><a href="index.php">Markdown</a></h1>
</header>
<div class="container">
  <main>
    <h2 class="page_title">Sign in ...</h2>
    <div class="insert_area">
      <form action="login_act.php" method="post">
        <div class="login_form">
            <input type="text" name="lid" placeholder="ID">
            <input type="text"  name="lpw" placeholder="PASS">
          <div class="editor_submit">
            <button type="submit">Sign in</button>
            <a href="register.php">New to Markdown? Create an account.</a>
          </div>
        </div>
      </form>
    </div>
  </main>
</div>
</body>
</html>
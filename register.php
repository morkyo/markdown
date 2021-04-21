
<!DOCTYPE html>
<html lang="en">
<?php include("head.php");?>
<body>
<header>
  <h1><a href="index.php">Markdown</a></h1>
</header>
<div class="container">
  <main>
    <h2 class="page_title">Create your account ...</h2>
    <div class="insert_area">
      <form action="register_act.php" method="post">
        <div class="login_form">
            <input type="text" name="u_name" placeholder="USER NAME">
            <input type="text" name="lid" placeholder="ID">
            <input type="text"  name="lpw" placeholder="PASS">
          <div class="editor_submit">
            <button type="submit">Create account</button>
            <a href="login.php">Sign in instead</a>
          </div>
        </div>
      </form>
    </div>
  </main>
</div>
</body>
</html>
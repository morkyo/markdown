<header>
  <h1><a href="index.php">Markdown</a></h1>
  <?php
  if ($_SESSION["chk_ssid"] != "") {
    echo '<a href="logout.php" class="logout"><i class="fas fa-sign-out-alt"></i> logout</a>';
  }
  ?>
</header>
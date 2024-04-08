<!DOCTYPE html>

<html lang="en" dir="ltr">

<head>
  <meta charset="UTF-8">

  <link rel="stylesheet" href="contact.css">
  <link rel="stylesheet" href="homepage.css">
  <link rel="stylesheet" href="navbar.php">

  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.2/css/all.min.css" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
</head>

<body background="bg1.jpg">
  <?php include 'navbar.php'; ?>

  <div class="container">
    <div class="content">
      <div class="left-side">
        <div class="address details">
          <i class="fas fa-map-marker-alt"></i>
          <div class="topic">Address</div>
          <div class="text-one">Block C-505, Sayli Road, Silavassa</div>
        </div>
        <div class="phone details">
          <i class="fas fa-phone-alt"></i>
          <div class="topic">Phone</div>
          <div class="text-one">+97 9867647894</div>
        </div>
        <div class="email details">
          <i class="fas fa-envelope"></i>
          <div class="topic">Email</div>
          <div class="text-one">jeevaninsu@outlook.com</div>
        </div>
      </div>
      <div class="right-side">
        <div class="topic-text">Send us a message</div>
        <p>Get The Best Of Our Services
        <p>
        <form name="form1" action='contact/modified.php' method='POST' enctype="multipart/form-data">
          <div class="input-box">
            <h3>Full Name:</h3>
            <input type="text" name="full_name" placeholder="Enter your name" required>
          </div>
          <br />
          <div class="input-box">
            <h3>Contact Number</h3>
            <input type="text" name="contact" placeholder="Enter your Contact Number" required>
          </div>
          <br />
          <div class="input-box">
            <h3>Enter your message</h3>
            <input type="text" name="message" placeholder="Message...">
          </div>

          <br /><br /><br />
          <center>
            <div class="button">
              <input type="submit" value="Send Now">
            </div>
          </center>
        </form>
      </div>
    </div>
  </div>
</body>

</html>
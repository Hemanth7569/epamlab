-<%@ page language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Journey</title>
<meta charset="utf-8">
<link rel="icon" href="images/favicon.ico">
<link rel="shortcut icon" href="images/favicon.ico">
<link rel="stylesheet" href="css/style.css">
<link rel="stylesheet" href="css/slider.css">
<script src="js/jquery.js"></script>
<script src="js/jquery-migrate-1.1.1.js"></script>
<script src="js/superfish.js"></script>
<script src="js/sForm.js"></script>
<script src="js/jquery.jqtransform.js"></script>
<script src="js/jquery.equalheights.js"></script>
<script src="js/jquery.easing.1.3.js"></script>
<script src="js/tms-0.4.1.js"></script>
<script src="js/jquery-ui-1.10.3.custom.min.js"></script>
<script src="js/jquery.ui.totop.js"></script>
<script>
$(window).load(function () {
    $('.slider')._TMS({
        show: 0,
        pauseOnHover: false,
        prevBu: '.prev',
        nextBu: '.next',
        playBu: false,
        duration: 800,
        preset: 'random',
        pagination: false, //'.pagination',true,'<ul></ul>'
        pagNums: false,
        slideshow: 8000,
        numStatus: false,
        banners: true,
        waitBannerAnimation: false,
        progressBar: false
    });
    $("#tabs").tabs();
    $().UItoTop({
        easingType: 'easeOutQuart'
    });
});
</script>
<!--[if lt IE 9]>
<script src="js/html5shiv.js"></script>
<link rel="stylesheet" media="screen" href="css/ie.css">
<![endif]-->
</head>
<body class="page1">
<style>
.logout-button {
  display: inline-block;
  padding: 10px 20px;
  background-color: #87CEEB;
  color: #FFFFFF;
  text-decoration: none;
  border-radius: 4px;
}

.logout-button:hover {
  background-color: #FFFFFF;
}

</style>
<header>
  <div class="container_12">
    <div class="grid_12">
      <h1><a href="index.html"><img src="images/logo.png" alt=""></a></h1>
      <div class="clear"></div>
    </div>
    <div class="menu_block">
      <nav>
        <ul class="sf-menu">
          
          

          </li>
          <li><a href="tours.html">Tours</a></li>
          <li><a href="contacts.html">Contacts</a></li>
          <li><a href="packages.html">Packages</a></li>
          <li><a href="carrentals.html">Car Rentals</a></li>
          <li><a href="booking.jsp">My Bookings</a></li>&nbsp;&nbsp;&nbsp;
          
          <a class="logout-button" href="login.html">Log Out</a>
          
         
        </ul>
      </nav>
      <div class="clear"></div>
    </div>
    <div class="clear"></div>
  </div>
</header>
<div class="main">
  <div class="container_12">
    <div class="grid_12">
      <div class="slider-relative">
        <div class="slider-block">
          <div class="slider"> <a href="#" class="prev"></a><a href="#" class="next"></a>
            <ul class="items">
              <li><img src="https://pbs.twimg.com/media/EkIMAVRU0AMHbWY.jpg" alt="">
                <div class="banner">
                  <div>THERE ARE PLENTY OF PLACES</div>
                  <br>
                  <span> that are worth seeing</span> </div>
              </li>
              <li><img src="https://img.onmanorama.com/content/dam/mm/en/travel/travel-news/images/2022/7/13/kerala-tourism.jpg" alt=""></li>
              <li><img src="https://www.tourmyindia.com/blog/wp-content/uploads/2021/03/Best-Places-to-Visit-in-Kerala.jpg" alt=""></li>
              <li><img src="https://www.outlookindia.com/outlooktraveller/public/uploads/articles/travelnews/shutterstock_1993000271.jpg" alt=""></li>
            </ul>
          </div>
        </div>
      </div>
    </div>
  </div>
  <div class="content">
    <div class="container_12">
      <div class="grid_12">
        <h3>Top Destinations</h3>
      </div>
      <div class="boxes">
        <div class="grid_4">
          <figure>
            <div><img src="https://www.bestbus.in/assets/images/news-cms/Kerala_Tourism.jpg" alt=""></div>
            <figcaption>
              <h3>Kumbalangi</h3>
              Lorem ipsum dolor site geril amet, consectetur cing eliti. <p>Details</p> </figcaption>
          </figure>
        </div>
        <div class="grid_4">
          <figure>
            <div><img src="https://www.keralatourism.org/images/wallpaper/thumb/image9_8.jpg" alt=""></div>
            <figcaption>
              <h3>Kochi</h3>
              Psum dolor sit ametylo gerto consectetur ertori hykill holit adipiscing lity. 
              <p>Details</p> </figcaption>
          </figure>
        </div>
        <div class="grid_4">
          <figure>
            <div><img src="https://www.clubmahindra.com/blog/media/section_images/shuttersto-e0c9e09e59ef1e2.jpg" alt=""></div>
            <figcaption>
              <h3>Munnar</h3>
              Lorem ipsum dolor site geril amet, consectetur cing eliti. <p>Details</p> </figcaption>
          </figure>
        </div>
        <div class="clear"></div>
      </div>
      <div class="grid_8">
        <div id="tabs">
          <ul>
            
            <li><a href="#tabs-2">hot Deal OFFERS</a></li>
           
          </ul>
          
          
          <div class="tab_cont" id="tabs-1"> <img src="" alt="">
            
            <h3>About 20% OFF</h3>
            <div class="extra_wrapper">
              <div class="text1">Alleppey</div>
              <p class="style1"> There is the whole of Kerala in one side, and then there is this heavenly tourist destination called Alappuzha or Alleppey! Esteemed as the ‘Backwater Capital of India’ or the ‘Venice of the East’, Alleppey is known for its silent backwaters and bountiful beauty!</p>
              <a href="allepey.html" class="btn">Details</a>
              <div class="clear "></div>
            </div>
            <div class="clear cl1"></div>
            <img src="" alt="">
            <div class="extra_wrapper">
              <div class="text1 tx1">Kollam</div>
              A quaint port-city in God’s Own Country, Kollam has its own charm and appeal. Enthralled by the turquoise Lakshadweep Sea and caressed by the emerald Ashtamudi Lake, it is a picture-perfect holiday destination in the list of the most appealing or enticing tourist places in India’s ‘Backwater Capital’.
              <div class="clear"></div>
              <a href="kollam.html" class="btn bt1">Details</a>
              <div class="clear "></div>
            </div>
          </div>
          
                    
        </div>
      </div>
      
      <div class="clear"></div>
    </div>
  </div>
  <div class="bottom_block">
    <div class="container_12">
      <div class="grid_2 prefix_2">
        <ul>
          <li><a>FAQS Page</a></li>
          <li><a >People Say</a></li>
        </ul>
      </div>
      <div class="grid_2">
        <ul>
          <li><a>Useful links</a></li>
          <li><a >Partners</a></li>
        </ul>
      </div>
      <div class="grid_2">
        <ul>
          <li><a>Insurance</a></li>
          <li><a >Family Travel</a></li>
        </ul>
      </div>
      <div class="grid_2">
        <h4>Contact Us:</h4>
        TEL: 9898989898<br>
        <a >klutourism.org</a> </div>
      <div class="clear"></div>
    </div>
  </div>
</div>
<footer>
  <div class="container_12">
    <div class="grid_12">
      <div class="socials"> <a ></a> <a ></a> <a ></a> <a></a> </div>
      
    </div>
    <div class="clear"></div>
  </div>
</footer>
</body>
</html>

<%
// Get the email and name from session
String email = (String) session.getAttribute("email");
String name = (String) session.getAttribute("name");

// Check if email and name are not null before printing
if (email != null && name != null) {
    // Print the email and name in the console
    System.out.println("Email: " + email);
    System.out.println("Name: " + name);
    
} else {
    System.out.println("Email or Name is not set in the session.");
}
%>
   <li><a href="booking.jsp">My Bookings</a></li>
</body>
</html>

<%@ page import="java.io.File" %>
<!DOCTYPE html>
<html lang="zxx">
  <head>
    <!-- Required meta tags -->
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>World Vision</title>
    <!-- plugin css for this page -->
    <link
      rel="stylesheet"
      href="../../../assets/vendors/mdi/css/materialdesignicons.min.css"
    />
    <link rel="stylesheet" href="../../../assets/vendors/aos/dist/aos.css/aos.css" />
    <link
      rel="stylesheet"
      href="../../../assets/vendors/owl.carousel/dist/assets/owl.carousel.min.css"
    />

    <link
      rel="stylesheet"
      href="../../../assets/vendors/owl.carousel/dist/assets/owl.theme.default.min.css"
    />
    <!-- End plugin css for this page -->
    <link rel="shortcut icon" href="../../../assets/images/favicon.png" />
    <!-- inject:css -->
    <link rel="stylesheet" href="../../../assets/css/style.css">
    <!-- endinject -->
  </head>

  <body>
    <ul class="container-scroller">
      <header id="header">
        <ul class="container">
          <!-- partial:../../../partials/_navbar.html -->
          <nav class="navbar navbar-expand-lg navbar-light">
              <div class="d-flex justify-content-between align-items-center navbar-top">
                <ul class="navbar-left">
                  <li>Wed, March 4, 2020</li>
                  <li>30°C,London</li>
                </ul>
                <div>
                  <a class="navbar-brand" href="#"
                    ><img src="../../../assets/images/logo.svg" alt=""
                  /></a>
                </div>
                <div class="d-flex">
                  <ul class="navbar-right">
                    <li>
                      <a href="#">ENGLISH</a>
                    </li>
                    <li>
                      <a href="#">ESPAÑOL</a>
                    </li>
                  </ul>
                  <ul class="social-media">
                    <li>
                      <a href="#">
                        <i class="mdi mdi-instagram"></i>
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <i class="mdi mdi-facebook"></i>
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <i class="mdi mdi-youtube"></i>
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <i class="mdi mdi-linkedin"></i>
                      </a>
                    </li>
                    <li>
                      <a href="#">
                        <i class="mdi mdi-twitter"></i>
                      </a>
                    </li>
                  </ul>
                </div>
              </div>
              <div class="navbar-bottom-menu">
                <button
                  class="navbar-toggler"
                  type="button"
                  data-target="#navbarSupportedContent"
                  aria-controls="navbarSupportedContent"
                  aria-expanded="false"
                  aria-label="Toggle navigation"
                >
                  <span class="navbar-toggler-icon"></span>
                </button>

                <div
                  class="navbar-collapse justify-content-center collapse"
                  id="navbarSupportedContent"
                >
                  <ul
                    class="navbar-nav d-lg-flex justify-content-between align-items-center"
                  >
                    <li>
                      <button class="navbar-close">
                        <i class="mdi mdi-close"></i>
                      </button>
                    </li>
                    <li class="nav-item active">
                      <a class="nav-link active" href="../../../index.html">Home</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="./world.html">World</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="./author.html">Magazine</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="./news-post.html">Blog</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="./business.html">Business</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="./sports.html">Sports</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="./art.html">Art</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="./politics.html">Politics</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="./real-estate.html">Real estate</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="./travel.html">Travel</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#"><i class="mdi mdi-magnify"></i></a>
                    </li>
                  </ul>
                </div>
              </div>
            </nav>

          <!-- partial -->
        </div>
      </header>
      <div class="container">
        <div class="row">
          <div class="col-sm-12">
            <div class="text-center">
              <h1 class="text-center mt-5">
                <BL-TITLE>
              </h1>
              <p class="text-secondary fs-15 mb-5 pb-3">
                <BL-TITLE-DES>
              </p>
            </div>
          </div>
        </div>
        <div class="contact-wrap">
          <div class="row">
            <div class="col-lg-6  mb-5 mb-sm-2">
              <div class="position-relative image-hover">
                <img
                  src="images/<BL-IMG>"
                  class="img-fluid"
                  alt="world-news"
                />
              </div>
            </div>
            <div class="col-lg-6 mb-2 mb-lg-2">
              <div class="row">
                <div class="col-sm-12  mb-2 mb-lg-2">
                  <h1>BY <BL-AUTH></h1>
                  <p class="mb-3">
                    <BL-DATE>
                  </p>
                  <p class="mb-4">
                    <BL-P>
                  </p>
                  <!--
                  <p class="mb-4">
                    The new location will be situated in a prime spot in the heart of Burbank, making it easily accessible for residents and visitors alike. The restaurant will feature the same menu as the original location, offering a wide variety of tasty dishes to choose from.
                  </p>
                  <p class="fs-15 font-weight-600">
                    VIEW MORE INFORMATION <a href="https://burbanklive.com">burbanklive.com</a>
                  </p>
                  -->
                </div>
              </div>
            </div>
          </div>
          <div class="row">
            <div class="col-lg-12  mb-4 mb-lg-4">
              <p class="fs-15 font-weight-normal mb-4 mt-5">
                  <BL-P-LOW>
                    <%
    // Get the directory path from the request parameter
    String directoryPath = "/var/lib/tomcat9/webapps4/ROOT/pages/news/published";

    // Create a File object for the directory
    File directory = new File(directoryPath);

    // Get a list of files in the directory
    File[] files = directory.listFiles();

    // Loop through the files and print their names
    for (File file : files) {
       out.println("<a href=published/" + file.getName() + " >" + file.getName() + </a> + "<br>");
    }
  %>




              </p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- container-scroller ends -->
    <!-- partial:../../../partials/_footer.html -->
    <footer>
          <div class="container">
            <div class="row">
              <div class="col-sm-12">
                <div class="border-top"></div>
              </div>
              <div class="col-sm-3 col-lg-3">
                <ul class="footer-vertical-nav">
                  <li class="menu-title"><a href="./news-post.html">News</a></li>
                  <li><a href="../../../index.html">Home</a></li>
                  <li><a href="./world.html">World</a></li>
                  <li><a href="./author.html">Magazine</a></li>
                  <li><a href="./business.html">Business</a></li>
                  <li><a href="./politics.html">Politics</a></li>
                </ul>
              </div>
              <div class="col-sm-3 col-lg-3">
                <ul class="footer-vertical-nav">
                  <li class="menu-title"><a href="./world.html">World</a></li>
                  <li><a href="./sports.html">Sports</a></li>
                  <li><a href="./art.html">Art</a></li>
                  <li><a href="#">Magazine</a></li>
                  <li><a href="./real-estate.html">Real estate</a></li>
                  <li><a href="./travel.html">Travel</a></li>
                  <li><a href="./author.html">Author</a></li>
                </ul>
              </div>
              <div class="col-sm-3 col-lg-3">
                <ul class="footer-vertical-nav">
                  <li class="menu-title"><a href="#">Features</a></li>
                  <li><a href="#">Photography</a></li>
                  <li><a href="#">Video</a></li>
                  <li><a href="./news-post.html">Newsletters</a></li>
                  <li><a href="#">Live Events</a></li>
                  <li><a href="#">Stores</a></li>
                  <li><a href="#">Jobs</a></li>
                </ul>
              </div>
              <div class="col-sm-3 col-lg-3">
                <ul class="footer-vertical-nav">
                  <li class="menu-title"><a href="#">More</a></li>
                  <li><a href="#">RSS</a></li>
                  <li><a href="#">FAQ</a></li>
                  <li><a href="#">User Agreement</a></li>
                  <li><a href="#">Privacy</a></li>
                  <li><a href="./aboutus.html">About us</a></li>
                  <li><a href="./contactus.html">Contact</a></li>
                </ul>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-12">
                <div class="d-flex justify-content-between">
                  <img src="../../../assets/images/logo.svg" class="footer-logo" alt="" />

                  <div class="d-flex justify-content-end footer-social">
                    <h5 class="m-0 font-weight-600 mr-3 d-none d-lg-flex">Follow on</h5>
                    <ul class="social-media">
                      <li>
                        <a href="#">
                          <i class="mdi mdi-instagram"></i>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i class="mdi mdi-facebook"></i>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i class="mdi mdi-youtube"></i>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i class="mdi mdi-linkedin"></i>
                        </a>
                      </li>
                      <li>
                        <a href="#">
                          <i class="mdi mdi-twitter"></i>
                        </a>
                      </li>
                    </ul>
                  </div>
                </div>
              </div>
            </div>
            <div class="row">
              <div class="col-sm-12">
                <div
                  class="d-lg-flex justify-content-between align-items-center border-top mt-5 footer-bottom"
                >
                  <ul class="footer-horizontal-menu">
                    <li><a href="#">Terms of Use.</a></li>
                    <li><a href="#">Privacy Policy.</a></li>
                    <li><a href="#">Accessibility & CC.</a></li>
                    <li><a href="#">AdChoices.</a></li>
                    <li><a href="#">Advertise with us Transcripts.</a></li>
                    <li><a href="#">License.</a></li>
                    <li><a href="#">Sitemap</a></li>
                  </ul>
                  <p class="font-weight-medium">
                    © 2020 <a href="https://www.bootstrapdash.com/" target="_blank" class="text-dark">@ BootstrapDash</a>, Inc.All Rights Reserved.
                  </p>
                </div>
              </div>
            </div>
          </div>
        </footer>

    <!-- partial -->
    <!-- inject:js -->
    <script src="../../../assets/vendors/js/vendor.bundle.base.js"></script>
    <!-- endinject -->
    <!-- plugin js for this page -->
    <script src="../../../assets/vendors/aos/dist/aos.js/aos.js"></script>
    <script src="../../../assets/vendors/owl.carousel/dist/owl.carousel.min.js"></script>
    <!-- End plugin js for this page -->
    <!-- Custom js for this page-->
    <script src="../../../assets/js/demo.js"></script>
    <!-- End custom js for this page-->
  </body>
</html>

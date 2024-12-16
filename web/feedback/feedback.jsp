<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Feedback Manager</title>
    <link rel="stylesheet"  href="../css/feedback-styles.css">
    <script src="https://cdn.tailwindcss.com"></script>
    <script src="js/navbar.js" defer></script>
    <style>
        #logo{
            height: 45px;
            margin-top: 3px;
            /*margin-left: 13px;*/
        }
        #head{
            height: 75px;
        }
        #navigation{
            font-size:20px;
        }
    </style>
</head>
<body>
   <header id="head" class="fixed top-0 left-0 w-full z-50 bg-gray-900 bg-opacity-90 backdrop-blur-sm shadow-lg">
      <div class="container mx-auto flex justify-between items-center px-6 py-3">
        <!-- Logo -->
        <h1 class="text-3xl font-extrabold text-teal-300 tracking-wide"> 
            <!--i changed it-->
            <!--<a href="Dashboard/home.jsp"><img src="flick 2.png"/></a>-->
            <a href="../home.jsp"><img src="../images/logo.png" id="logo"></a>
             
        </h1>

        <!-- Navigation Menu (Desktop) -->
        <nav id="navigation" class="hidden md:flex space-x-8 text-lg font-medium text-gray-300">
          <a href="../home.jsp" class="hover:text-teal-300 transition duration-300">Home</a>
          <a href="../home.jsp#about-us" class="hover:text-teal-300 transition duration-300">About Us</a>
          <!--<a href="#upcoming-movies"" class="hover:text-teal-300 transition duration-300">Movies</a>-->
          <a href="../movies.jsp" class="hover:text-teal-300 transition duration-300">Movies</a>
          <!--<a href="movies.jsp" class="hover:text-teal-300 transition duration-300">Movies</a>-->
          <a href="../home.jsp#faq" class="hover:text-teal-300 transition duration-300">FAQ</a>
          <a href="../register.html" class="hover:text-teal-300 transition duration-300">Sign up</a>
        </nav>

        <!-- Profile Section -->
<!--        <div class="hidden md:flex items-center space-x-4">
          <img src="resources/dashboard/home/profile.svg" alt="User Logo" class="w-10 h-10 rounded-full border-2 border-teal-300">
          
              
          <span class="text-gray-300 font-medium">user@gmail.com</span>
          
          
        </div>-->

        <!-- Mobile Menu Button -->
        <button id="menu-toggle" class="block md:hidden text-teal-300 focus:outline-none">
          <svg class="w-8 h-8" xmlns="http://www.w3.org/2000/svg" fill="none" viewBox="0 0 24 24" stroke="currentColor">
            <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M4 6h16M4 12h16m-7 6h7" />
          </svg>
        </button>
      </div>

      <!-- Mobile Navigation Menu -->
      <nav id="mobile-menu" class="hidden bg-gray-800 bg-opacity-90 md:hidden">
        <ul class="flex flex-col space-y-4 text-lg font-medium text-gray-300 py-4 px-6">
          <li><a href="#features" class="block hover:text-teal-300 transition duration-300">Features</a></li>
          <li><a href="#movies" class="block hover:text-teal-300 transition duration-300">Movies</a></li>
          <li><a href="#contact" class="block hover:text-teal-300 transition duration-300">Contact</a></li>
          <li>
            <div class="flex items-center space-x-4">
              <img src="https://via.placeholder.com/40" alt="User Logo" class="w-10 h-10 rounded-full border-2 border-teal-300">
              <span class="text-gray-300 font-medium">...</span>
            </div>
          </li>
        </ul>
      </nav>
    </header>
    <div class="feedback-container">
        <div class="feedback-con">
        <h1 class="feeback-h1">FEEDBACK</h1>
        <form action="success.jsp" method="POST" id="feedbackForm">
            <div class="form-group">
                <label for="name">Name</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="mobile">Mobile</label>
                <input type="text" id="mobile" name="mobile" required pattern="\d{10}" >
            </div>
            <div class="form-group">
                <label for="message">Message</label>
                <textarea id="message" name="message" rows="4" required></textarea>
            </div>
            
            <div class="form-group">
                <button type="submit" class="submit-btn">Submit Feedback</button>
            </div>
        </form>
        <div class="contact-info">
            <p>Ph: +94766447664</p>
            <p>Email: feedback@fick.com</p>
        </div>
        </div>
    </div>
    
 <footer class="bg-gray-900 text-white py-10">
        <div class="container mx-auto px-6 lg:px-12 grid grid-cols-1 md:grid-cols-4 gap-8">
          <!-- About Section -->
          <div>
            <h3 class="text-teal-300 font-bold text-lg mb-4">About Us</h3>
            <p class="text-gray-300 text-sm leading-relaxed">
              Welcome to SmBookings! Your ultimate destination for the latest movies and theater experiences.
            </p>
          </div>

          <!-- Quick Links -->
          <div>
            <h3 class="text-teal-300 font-bold text-lg mb-4">Quick Links</h3>
            <ul class="space-y-2">
              <li><a href="#" class="text-gray-300 hover:text-teal-300 transition">Home</a></li>
              <li><a href="#" class="text-gray-300 hover:text-teal-300 transition">Top Movies</a></li>
              <li><a href="#" class="text-gray-300 hover:text-teal-300 transition">Now Showing</a></li>
              <li><a href="#" class="text-gray-300 hover:text-teal-300 transition">Contact Us</a></li>
            </ul>
          </div>

          <!-- Contact Info -->
          <div>
            <h3 class="text-teal-300 font-bold text-lg mb-4">Contact Us</h3>
            <p class="text-gray-300 text-sm">
              <strong>Email:</strong> support@smbookings.com<br>
              <strong>Phone:</strong> +123 456 7890<br>
              <strong>Address:</strong> 123 Cinema St, Movietown, USA
            </p>
          </div>

          <!-- Social Media -->
          <div>
            <h3 class="text-teal-300 font-bold text-lg mb-4">Follow Us</h3>
            <div class="flex space-x-4">
              <a href="#" class="text-gray-400 hover:text-teal-300">
                <img src="resources/landing/fb.svg" loading="lazy" class="w-6 h-6" alt="Fb Icon">
              </a>
              <a href="#" class="text-gray-400 hover:text-teal-300">
                <img src="resources/landing/twitter.svg" loading="lazy" class="w-6 h-6" alt="Twitter Icon">
              </a>
              <a href="#" class="text-gray-400 hover:text-teal-300">
                <img src="resources/landing/insta.svg" loading="lazy" class="w-6 h-6" alt="Insta Icon">
              </a>
            </div>
          </div>
        </div>

        <!-- Bottom Bar -->
        <div class="mt-10 border-t border-gray-700 pt-6 text-center text-sm text-gray-500">
          &copy; 2024 SmBookings. All Rights Reserved. | <a href="#" class="text-teal-300 hover:underline">Privacy Policy</a>
        </div>
      </footer>
</body>
</html>

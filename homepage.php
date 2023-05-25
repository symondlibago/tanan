<?php include('common/header.php') ?>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<html>
<body>
<div class="home-div"></div>

	<div class="wrapper">
		<h1>SLIS</h1>

		<ul class="dynamic-txt">
			<li><span>NEW LEARNING ENVIRONMENT IN THIS DIGITAL WORLD.</span></li>
		</ul>
	</div>

	<div class="w-100 in-ad-ap" id="blur">
		<div class="row m-auto text-center">
			<div class="col-md-4" id="readmore">
				<h3>INTRODUCING-CHMSC</h3>
				<a href="#">Read More</a>
			</div>
			<div class="col-md-4" id="readmore-admission">
  				<h3>ADMISSION POLICY</h3>
 				 <a href="#" class="readmore-adm">Read More</a>
			</div>

			<div class="col-md-4">
				<h3>APPLY NOW</h3>	
			</div>
		</div>
	</div>


	<div id="popup">
		<div class="close">+</div>
		<h2>About Us</h2>
		<p>
		At Academatrix, we are committed to providing a positive and enriching educational experience for our students. Our dedicated team of educators strives to create a supportive and inclusive learning environment where students can thrive academically, socially, and emotionally. We foster a culture of collaboration, critical thinking, and personal growth, empowering students to reach their full potential. With a focus on academic excellence and holistic development, Academatrix prepares students to become lifelong learners and responsible contributors to society.
		</p>
		<a href="#" >Close</a>
	</div>
	<div id="popup-read">
		<div class="close">+</div>
		<h2>Admission Policy</h2>
		<p>
		The admission policy at Academatrix is designed to provide equal educational opportunities to all students. The school values diversity and inclusivity, considering academic achievements, extracurricular involvement, personal character, and potential for growth during the holistic evaluation process. They encourage applications from students with a genuine passion for learning and a commitment to personal development. The selection committee reviews applications carefully, ensuring fairness and transparency, and making decisions based on merit and alignment with the school's values. Academatrix also offers support and accommodations for students with special needs. Overall, the admission policy reflects the school's dedication to creating a nurturing and stimulating educational environment that promotes inclusivity, diversity, and excellence in education.
		</p>
		<a href="#" >Close</a>
	</div>


	<section class="bg-light text-center" id="background">
  <div class="container pt-5">
    <h1>FACULTIES</h1>
    <p>Academatrix serves the national and international community through a broad spectrum of undergraduate studies.</p>
    <div class="row pt-3 pb-3">
      <div class="col-lg-3 col-md-6 col-sm-6">
        <div class="card card-margin h-100">
          <div class="card-logo">
            <img src="images/1.jpg" class="card-img img-fluid">
          </div>
          <div class="card-body">
            <h5 class="card-title">Faculty of Engineering and Technology</h5>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 col-sm-6">
        <div class="card card-margin h-100">
          <div class="card-logo">
            <img src="images/2.jpg" class="card-img img-fluid">
          </div>
          <div class="card-body">
            <h5 class="card-title">Faculty of Architecture, Art and Design</h5>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 col-sm-6">
        <div class="card card-margin h-100">
          <div class="card-logo">
            <img src="images/3.jpg" class="card-img img-fluid">
          </div>
          <div class="card-body">
            <h5 class="card-title">Faculty of Information Technology, Computer Science</h5>
          </div>
        </div>
      </div>
      <div class="col-lg-3 col-md-6 col-sm-6">
        <div class="card card-margin h-100">
          <div class="card-logo">
            <img src="images/4.jpg" class="card-img img-fluid">
          </div>
          <div class="card-body">
            <h5 class="card-title">Faculty of Business Administration</h5>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>


	<footer>
  <div class="footer-top">
    <div class="container">
        <div class="row">
          <div class="col-md-4 col-sm-6 col-xs-12 segment-two md-mb-30 sm-mb-30">
            <h2>UNDERGRADUATE PROGRAMS</h2>
            <ul>
              <li><a href="">B.Sc. Civil Engineering</a></li>
              <li><a href="">B.Sc. Electrical Engineering</a></li>
              <li><a href="">B.Sc. Mechanical Engineering</a></li>
              <li><a href="">B. Architecture</a></li>
              <li><a href="">BS Computer Science</a></li>
              <li><a href="">Bachelors of Business Administration</a></li>
            </ul>
          </div>  
          <div class="col-md-3 col-sm-6 col-xs-12 segment-two md-mb-30 sm-mb-30">
            <h2>CONTACT DETAILS</h2>
              <p>Address: Ngano Man St.,
                  Cagayan de Oro City – Philippines</p>
              <p>Telephones: +639272777334</p>
              <p>E-mail: academatrix@gmail.com</p>
        </div>
      </div>
    </div>
    </div>
  <p class="footer-bottom-text">CopyRights © Alright Reserve 2022</p>
</footer>


<script>
$(document).ready(function() {
  $('#readmore a').click(function(event) {
    event.preventDefault();
    $('.home-div, .in-ad-ap, section#background, footer').addClass('blur');
    $('#popup').addClass('active');
  });

  $('#readmore-admission .readmore-adm').click(function(event) {
    event.preventDefault();
    $('.home-div, .in-ad-ap, section#background, footer').addClass('blur');
    $('#popup-read').addClass('active');
  });

  $('#popup .close, #popup a').click(function(event) {
    event.preventDefault();
    $('.home-div, .in-ad-ap, section#background, footer').removeClass('blur');
    $('#popup').removeClass('active');
  });

  $('#popup-read .close, #popup-read a').click(function(event) {
    event.preventDefault();
    $('.home-div, .in-ad-ap, section#background, footer').removeClass('blur');
    $('#popup-read').removeClass('active');
  });
});



</script>
</body>
</html>
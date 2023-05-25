<?php include('common/header.php') ?>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

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
			<div class="col-md-4"><h3>ADMISSION POLICY</h3></div>
			<div class="col-md-4"><h3>APPLY NOW</h3></div>
		</div>
	</div>


	<div id="popup">
		<div class="close">+</div>
		<h2>About Us</h2>
		<p>
		ACADEMATRIX provides a harmonious environment and learning opportunities to its students regardless of their gender, socioeconomic background, religious beliefs, and regional differences.
		</p>
		<a href="#" >Close</a>
	</div>

<?php include('common/cards.php') ?>
<?php include('common/footer.php') ?>


<script>
	$(document).ready(function() {
			$('#readmore a').click(function(event) {
				event.preventDefault();
				$('#popup').toggleClass('active');
				$('body').toggleClass('blur');
			});

			$('#popup .close, #popup a').click(function(event) {
				event.preventDefault();
				$('#popup').removeClass('active');
				$('body').removeClass('blur');
			});
		});
</script>
</body>
</html>
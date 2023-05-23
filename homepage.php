<?php include('common/header.php') ?>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<body>
<div class="home-div">
</div>

<div class="wrapper">
	<h1>SLIS</h1>

	<ul class="dynamic-txt">
		<li><span>NEW LEARNING ENVIRONMENT IN THIS DIGITAL WORLD.</span></li>
	</ul>

</div>

<div class="w-100 in-ad-ap">
	<div class="row m-auto text-center">
		<div class="col-md-4" id="readmore">
			<h3>INTRODUCING-CHMSC</h3>
			<a href="#" onclick="toggle()">Read More</a>
		</div>
		<div class="col-md-4"><h3>ADMISSION POLICY</h3></div>
		<div class="col-md-4"><h3>APPLY NOW</h3></div>
	</div>
</div>
<div class="paragraph">
	<p>
		CHMSC provides a harmonious environment and learning opportunities to its students regardless of their gender, socioeconomic background, religious beliefs, and regional differences.
	</p>
</div>

<?php include('common/cards.php') ?>
<?php include('common/footer.php') ?>

<div id="popup">
	<div onclick="toggle()" class="close">+</div>
	<h2>Lorem ipsum dolor, sit amet consectetur adipisicing elit.</h2>
	<p>
		Molestiae tenetur dignissimos natus dolorum laudantium enim iure. Quos
		exercitationem cumque incidunt asperiores necessitatibus soluta? Labore
		odio eos dignissimos, tenetur cum repellendus?
	</p>
	<a href="#" onclick="toggle()">Close</a>
</div>

<script>
	function toggle() {
		var popup = document.getElementById("popup");
		popup.classList.toggle("active");
	}
</script>

</body>
</html>

<!DOCTYPE html>
<html>
    
<head>
    <title>Home | UNITee</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <style>
            .navigation .home-active {
                background-color: #060653;
            }
        
            .navigation li a:hover:not(.home-active) {/* Current colour does not change when hover */
                background-color: #111;
            }

    </style>
    
</head>
    
<body>
    
    <?php include('includes/header.php') ?>
    
    <div class="row-25">
		<p style="font-size:100px" align="center"><b>U</b><br>N<br>I</p>
	</div>
	
	<div class="row-50">
	<!-- Slideshow container -->
	<div class="slideshow-container">

	<!-- Full-width images with number and caption text -->
		<div class="mySlides fade">
			<img src="images/ihack.jpg" style="width:100%">
		</div>

		<div class="mySlides fade">
			<img src="images/intelli1.jpg" style="width:100%">
		</div>

		<div class="mySlides fade">
			<img src="images/intelli2.jpg" style="width:100%">
		</div>
  
		<div class="mySlides fade">
			<img src="images/game1.jpg" style="width:100%">
		</div>
  
		<div class="mySlides fade">
			<img src="images/mozila.jpg" style="width:100%">
		</div>

	</div>
	<br>
		
    </div>
	<div class="row-25">
		<p style="font-size:100px" align="center"><b>T</b><br>e<br>e</p>
	</div>
	
	
	<div class="inner">
		<video id="vid" controls autoplay loop>
			<source src="videos/movie.mp4" type="video/mp4" />
			<source src="videos/movie.ogg" type="video/ogg" />
		</video>
	</div>
				
    <div class="row-100">
        <h1 class="font-white" align="center"> Popular products</h1>
    </div>
    <div class="gallery">
		<div>
			<div class="image fit">
				<a href="products.php"><img src="images/shirt1.jpg" alt="" style="margin-left:100px"/></a>
			</div>
		</div>
		<div>
			<div class="image fit">
				<a href="products.php"><img src="images/shirt2.jpg" alt="" style="margin-left:100px"/></a>
			</div>
		</div>
		<div>
			<div class="image fit">
				<a href="products.php"><img src="images/shirt3.jpg" alt="" style="margin-left:100px"/></a>
			</div>
		</div>
		<div>
			<div class="image fit">
				<a href="products.php"><img src="images/shirt4.jpg" alt="" style="margin-left:100px"/></a>
			</div>
		</div>
	</div>
        
    <?php include('includes/footer.php') ?>
	
<script type="text/javascript">
		//slide
		var slideIndex = 0;
		showSlides();

		function showSlides() {
		var i;
		var slides = document.getElementsByClassName("mySlides");
		for (i = 0; i < slides.length; i++) {
			slides[i].style.display = "none";
		}
		slideIndex++;
		
		if (slideIndex > slides.length) {slideIndex = 1}
		slides[slideIndex-1].style.display = "block";
		setTimeout(showSlides, 2000); // Change image every 2 seconds
		}
		//video
		var vid = document.getElementById("vid");
			vid.autoplay = true;
			vid.loop = true;
			vid.load();
	</script>
</body>
    
</html>
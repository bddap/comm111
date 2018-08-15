<style>
body {
	margin: 0px;
	overflow: hidden;
}
img {
	object-fit: contain;
}
body, section, img, video {
	width: 100vw;
	height: 100vh;
}
embed {
	width: 80%;
	height: 80%;
}
section {
	display: grid;
	place-items: center;
}
#progress-outer {
	position: absolute;
	bottom: 0%;
	left: 0%;
	width: 100vw;
}
#progress-inner {
	height: 2em;
	width: 0px;
	background: tomato;
}
</style>

<script>
function fitEmbeds() {
	document.getElementsByTagName('section')
}

function onContentLoaded() {
	const slideDuration = 20
	const sections = document.getElementsByTagName('section')
	const videos = document.getElementsByTagName('video')
	const progressInner = document.getElementById('progress-inner')
	let currentSlide = 0
	let slideStart = Date.now() / 1000

	function display(slide) {
		slideStart = Date.now() / 1000
		currentSlide = Math.min(Math.max(slide, 0), sections.length - 1)
		Array.from(sections).forEach((section, index) => {
			const shown = index === currentSlide
			section.style.display = shown ? null : 'none'
			if (shown) {
				// if section contains a video, play the video from start
				Array.from(section.getElementsByTagName('video'))
					.forEach(video => {
						video.currentTime = 0
						video.play()
					})
			}
		})
	}
	
	function update() {
		requestAnimationFrame(update)
		const progress = (Date.now() / 1000 - slideStart) / slideDuration * 100
		progressInner.style.width = `${Math.min(progress, 100)}%`
		if (currentSlide === sections.length - 1) {
			return
		}
		if (progress > 100) {
			display(currentSlide + 1)
		}
	}

	update()
   	display(0)
	document.addEventListener('click', event => display(currentSlide + 1))
	document.addEventListener('keydown', event => {
		if (['ArrowRight', 'ArrowUp', ' '].includes(event.key)) {
			display(currentSlide + 1)
		} else if (['ArrowLeft', 'ArrowDown'].includes(event.key)) {
			display(currentSlide - 1)
		}
	})
}
// document.addEventListener("DOMContentLoaded", onContentLoaded)
document.addEventListener('keydown', onContentLoaded, {once: true})
</script>

<script>
// recommended css: 

function toggleFullScreen() {
    if (document.fullscreenElement ||
        document.webkitFullscreenElement ||
        document.mozFullscreenElement ||
        document.msFullscreenElement) {
        (document.exitFullscreen ||
         document.webkitExitFullscreen ||
         document.mozCancelFullScreen ||
         document.msExitFullscreen).bind(document)();
    } else {
        (document.body.requestFullscreen ||
         document.body.webkitRequestFullscreen ||
         document.body.mozRequestFullScreen ||
         document.body.msRequestFullScreen).bind(document.body)();
    }
}
document.addEventListener('keydown', event => {
    if(event.key === 'f') toggleFullScreen();
})
</script>

<div id="progress-outer"><div id="progress-inner"></div></div>

<section>
<!-- pi-hole.net -->
![pihole](./static/pihole.png)
</section>

<section>
<!-- https://www.reddit.com/r/raspberry_pi/comments/96ke4f/my_gamer_son_is_learning_how_merciless_the_old/ -->
![emulator](./static/emulator.jpg)
</section>

<section>
<!-- https://www.reddit.com/r/raspberry_pi/comments/95n7fd/night_vision_zero_night_vision_goggles_for_less/ -->
![night-vision](./static/night-vision.jpg)
</section>

<section>
<!-- https://forum.kodi.tv/showthread.php?tid=209343 -->
![media-center](./static/media-center.jpg)
Music, Movies, TV Shows. Smart tv.
</section>

<section>
<!-- https://developer.amazon.com/docs/alexa-voice-service/set-up-raspberry-pi.html -->
![alexa](./static/alexa.jpg)
Voice assistant
</section>

<section>
Wifi router
</section>

<section>
<!-- https://github.com/PiStuffing/Quadcopter -->
![quadcopter](./static/quadcopter.jpg)
</section>

<section>
<!-- https://learn.adafruit.com/pigrrl-2/overview -->
![pigrrl](./static/pigrrl.jpg)
</section>

<section>
<!-- https://www.reddit.com/r/raspberry_pi/comments/9637zg/raspi_used_in_robot_that_finds_waldo_with_ai/ -->
<!-- ![waldo](./static/waldo.webm) -->
<video autoplay name="media">
	<source src="./static/waldo.webm" type="video/webm"/>
</video>
</section>

<section>
<!-- https://www.reddit.com/r/raspberry_pi/comments/95ln3y/pi_automated_foosball_scoring/ -->
<!-- ![foosball](./static/foosball.webm) -->
<video autoplay name="media">
	<source src="./static/foosball.webm" type="video/webm"/>
</video>
</section>

<section>
<!-- https://howchoo.com/g/y2rhnzm3odz/control-your-3d-printer-with-octoprint-and-raspberry-pi -->
![octoprint](./static/octoprint.png)
</section>

<section>
<!-- https://www.raspberrypi.org/ -->
![security-cam](./static/security-cam.jpg)
</section>

<section>
<!-- https://www.reddit.com/r/raspberry_pi/comments/94lm00/hi_reddit_heres_one_of_my_fun_projects_using/ -->
<!-- <iframe width="560" height="315" src="https://www.youtube.com/embed/0xTzc1iJb3s?autoplay=1;rel=0&amp;controls=0&amp;showinfo=0" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe> -->
<!-- ![led-visualizer](./static/led-visualizer.webm) -->
<video autoplay muted="true">
	<source src="./static/led-visualizer.mp4" type="video/mp4"/>
</video>
</section>

<section>
<!-- https://www.learnopencv.com/deep-learning-based-human-pose-estimation-using-opencv-cpp-python/ -->
![pose-estimation](./static/pose-estimation.jpg)
</section>

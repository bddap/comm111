<style>
html {
	background: white;
}
body {
	font-family: sans-serif;
	display: grid;
	place-items: center;
	width: 100vw;
	height: 100vh;
	margin: 0px;
}
section {
	margin: 2em;
	font-size: 2em;
}
</style>

<script>
let currentSlide = 0;
function display(slide) {
	const sections = document.getElementsByTagName('section');
	currentSlide = Math.min(Math.max(slide, 0), sections.length - 1);
	Array.from(sections).forEach((section, index) => {
		section.style.display = index === currentSlide ? null : 'none';
	})
}
document.addEventListener('keydown', event => {
	if(event.key === 'ArrowRight' || 
		event.key === 'ArrowUp' ||
		event.key == ' ')
		display(currentSlide + 1);
    if(event.key === 'ArrowLeft' ||
		event.key === 'ArrowDown')
		display(currentSlide - 1);
});
document.addEventListener('click', event => display(currentSlide + 1));
document.addEventListener("DOMContentLoaded", () =>	display(0));
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

<section>
Argue against your own beliefs.
</section>

<section>
<h1>Groupthink</h1>

“…a quick and easy way to refer to a mode of thinking that persons engage in
when they are deeply involved in a cohesive in-group, when concurrence-seeking
becomes so dominant that it tends to override critical thinking or realistic appraisal
of alternative courses of action.”

—Irving l. Janis, 1982
</section>

<section>

<h2>Normalization of Deviance</h2>

“Social normalization of deviance means that people within the organization
become so much accustomed to a deviation that they don’t consider it as deviant,
despite the fact that they far exceed their own rules for the elementary safety”

—Diane Vaughan, 1996
</section>

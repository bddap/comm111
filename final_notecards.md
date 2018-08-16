<section>
Pecha Kucha Notecards

Andrew Dirksen

</section>

<section>
**Raspberry pi**

- multipurpose computer for education and fun.
- 35$ cheap enough to experiment with, don't have to worry about breaking, disposable.
- Wifi
- Bluetooth
- Various physical connectors
- I'm going to show you some fun ways to use the pi.
</section>

<section>
**Emulator**

- Plug tv, controllers, install Emulation Station.
- any retro game
- First legend of Zelda
- Even Super Mario 64
</section>

<section>
**Night Vision**

- reddit user Night Vision goggles
- 2018, $500 to $3K.
- The contraption shown here costed less than $100 dollars to build.
</section>

<section>
**Mediacenter**

- People like use pi as media centers
- Tv -> smart tv
- oversimplification, mediacenters do more
- Store and play Music, Movies, TV Shows.
- Stream torrents
- Launch your retro games
- bunch of other neat stuff.
</section>

<section>
**Ad blocker**

- block internet ads on your home network
- Pi-hole is software for the raspberry pi.
- Connect pi-hole pi home network
- hijack your local dns, block known ad providers
</section>

<section>
**Voice Assistant**

- Amazon distributes alexa software for all sorts of hardware.
- Pi included.
- speaker, microphone, follow Amazon's setup instructions, your pi in now a smart speaker
</section>

<section>
**Pigirrl**

- Remember how you can emulate games on a pi?
- Nobody said need be restricted to the living room.
- 3d printed enclosure
- screen
- some buttons
- a battery
- little raspberry pi
</section>

<section>
**Octopi**

- Plug your 3d printer into a raspberry pi to make a wifi printer.
- I do this and it's super convienient.
- start print from anywhere pick up later
</section>

<section>
**Camera Attachment**

- cheap little camera attachment
- security camera
- baby monitor
- dashcam
- Use it to play around with machine vision if you're into that sort of thing.
</section>

<section>
**Waldo**

- Having trouble finding Waldo. The pi has you covered.
- It's a pi attached to a camera, and a robot arm. 
- uses machine vision to find waldo at superhuman speeds
</section>

<section>

Thank you

</section>

<style>
body {
	font-family: sans-serif;
	font-size: 1.5em;
	width: calc(100w - 1em);
	max-width: 40em;
	margin: auto;
	display: grid;
	place-items: center;
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


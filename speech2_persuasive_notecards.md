<style>
body {
	font-family: sans-serif;
}
section {
	border-color: black;
	border-style: solid;
	border-width: 1px;
	padding-left: 1em;
	padding-right: 1em;
	margin: 1em;
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

<section>
Confirmation bias.

If you want to find the truth, argue against your own opinions.

Hard to change mind

- correct, that's fine.
- incorrect, stuck
- Everybody is wrong about things.

Walk Whole Foods every day Topo Chico

- take 10th street, fastest
- 9th street quiet has honeysuckles, birdsong
- Try the other metaphorical street
</section>

<section>
(Audience participation) 10/10 people are wrong about something

If you care to be right, prove yourself wrong.

Check yourself so you can improve.

- argue opposing opinions, mitigate your conformation bias
- correct yourself when wrong
- By opposing your own **true** viewpoint, you learn exactly **why** it's true.

Scientific Method.

</section>

<section>
Problem when convincing others

Not useful for persuasive speeches.

- goal is to convince? don't do this, counterproductive. footgun
- conversations, self reflection, honestly explore how you could be wrong.
</section>

<section>
Alternative method, let others oppose your arguments.

- Seems reasonable. you'll need:
- friends who disagree with you
- **actually listen** to them

Watch out for Group think. -- coined by Irving Janis

- Social pressures prevent critical/realistic thinking.
- According to Nasa, groupthink is to blame for the fatal failure of the challenger mission.
</section>

<section>
Self doubt, uncomfortable, inneficient.

- how make desicions?
- Don't counter yourself all the time.
- reevaluate on new information.

Watch out for Normalization of Deviance -- Coined by Diane Vaughan

- when you become used to something, you gradually stop realizing it's wrong
</section>

<section>
IF TIME ALLOWS

Things to ponder.

- What if everybody tryed to prove temselves wrong?
- What if nobody let their minds be changed.

I will say this

- Changing your mind feels good.
- The world starts to make a little more sense.

Try questioning even your most tightly held beleifs.

- You'll change your mind or you'll elucidate your own reasoning.
- What's the worst that could happen?
</section>

<section>
I'm going to consciously try opposing my own views.

Maybe it will help, probably not. Either way, I hope to gain some wisdom in the process.

</section>

{extends file="layout.tpl"}

{block name=body}
	<div class='background-image parallax vh-100 hero-image flex f-columns jc-center ai-center ' >
			<h1>Coty Crosby</h1>
			<p class='container-sm text-center'>
				I like to make things.
			</p>
			<a href='#about' class='button mt-1'>Would you like to know more?</a>
	</div>
	
	<div class='bg-black white py-4 vh-100' id='about'>
		<div class='container-md' >
			<div class='flex jc-between'>
				<div>
					<h3>Education</h3>
					<hr><br>

					<img src='/images/bgsu.png' width='250'><br>

				</div>
				<div>
					<h3>Experience</h3>				
					<hr>

					<h5>Satelytics</h5>
					<p>&bull; Web Developer</p>
					<p>&bull; November 2020 - Present Day</p>
					<br>

					<h5>Gifts Compass</h5>
					<p>&bull; Web Developer</p>
					<p>&bull; May 2016 - November 2020</p>
					<br>

					<h5>Owens Corning</h5>
					<p>&bull; Web Developer Intern</p>
					<p>&bull; May 2017 - August 2017</p>
					<br>

					<h5>Americare Home Health</h5>
					<p>&bull; Web Developer</p>
					<p>&bull; May 2014 - August 2015</p>
					<br>

					

				</div>
			</div>
		</div>
	</div>

	<div class='bg-red white py-4 vh-100'>
		<div class='container-md'>
			<h3>Skillset</h3>
			<ul>
				<li>Git</li>
			</ul>
		</div>
	</div>
{/block}
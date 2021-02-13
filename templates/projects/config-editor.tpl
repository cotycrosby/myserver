{extends file="layout.tpl"}

{block name=body}
<div class='py-5 hero-image' style='min-height: 10px;'>
	<h1 class='display-1'>
		Coty Crosby
	</h1>
	<h1>Config File Editor</h1>
</div>

<div class='bg-red text-light m-0 section'>
	<div class='container  pb-5'>
		<div class='row'>
			<div class='col-md-6'>
				<p class='mt-5'>
					A requirement for my alma mater, <strong>BGSU</strong>, is to complete a full time internship. They really didn't care that I had already completed one during my associate's. Luckily a good friend of mine <strong>Robert Jackson JR.</strong> said that he got accepted for an internship with <strong>Owens Corning</strong>. He mentioned that their normal intership spots were gone, but they might have room for a web developer. I went through a great interview process, I created a <a href='https://github.com/cotycrosby/owens-corning-test' target='_BLANK' class='text-warning'>small react project</a>, interviewed with my future supervisor and the head of the digital department, <strong>AND I GOT THE JOB </strong> <small>(internship) <sup>TM</sup></small>
				</p>

				<p>
					This was a weird experience. I really couldn't tell if the project was needed, or just a good learning experience that they might find some use for. My bosses had the problem of translating the site between languagees. Everyime a language was added, they had to export the JSON and YAML files to spread sheets, send it off to a translator, possibly iterate on the wording, and finally conver the spreadsheet back to the original file types. 
				</p>

				<p>
					They wanted an application where they could upload their files, have a translator log in, make changes, and have the app export the translations to the proper file types. 
				</p>

			</div>

			<div class='col-md-6'>
				<h3 class='mt-5'>Project Outline</h3>
				<hr class='border-light'>
				<ul class='list-group text-dark'>
					<li class='list-group-item'>Upload a file to the application and let its contents be stored in the database.</li>
					<li class='list-group-item'>Integrate with the company's authentication system.</li>
					<li class='list-group-item'>Export the content to the appropriate file type.</li>
					<li class='list-group-item'>Add new languages, using english as a base.</li>
				</ul>
			</div>
		</div>
	</div>
</div>

<div class='section '>
	<div class='container blog py-5'>
		<p>
			I really went all out on this project. I had the working prototype done in 1 month. My past experience really came together to where I felt like I could still learn a great deal, but easily keep up with the rest of the team. They answered back, because my later feature requests got harder and harder. 
		</p>

		<p>
			The project was created with ruby-on-rails. Which is their primary backend for the site and was needed so I could integrate with their custom authentication system. We discussed the database schema, the loose design, their expectations, and I got to work.
		</p>

		<p>
			I was able to get the file importing, exporting, crud, and authentication done all relatively early. I was on a strict timeline and only had three months but managed to get the core aspects of it done by the end of month 2. Things got a little trickier when feature scope creeped in. Javascript and CSS were (probably still are) my weaker skills. I've learned how to use react/webpack/babel/sass, and my code is a little more organized. 
		</p>
		
		<p>
			Something's I couldn't accomplish were the dragging and dropping of config variables and making it so that the variables don't get erased by translators. Looking back, the drag and drop feature should have been scrapped and I could have just prevented them from deleting any text between {literal} {brackets} {/literal}. I did get to do fun round of <strong>MOB</strong> programming where all the developer's started collaborating with me on ideas to solve the issue. They immediately found a jquery library that worked alright. 
		</p>

		<p>
			Since I was quick enough, I got to see French Canadian, and Mandarin get added to their dev site in real time. I was extremely relieved that everything went smoothly.
		</p>

		<p>
			Since this was an internship and I'm not a completely imcomptetant developer, the hardest part was the soft skills I had to learn. <strong>THEY MADE ME PRESENT THE APP IN FRONT OF 100-200 people</strong>. Extremely nerv-wracking, I managed, I think that I was too technical during the presentation, so it was probably a little bit boring. 
		</p>
	</div>
</div>

<div class='bg-dark text-light section'>
	<div class='container blog py-5'>
		<h1>What went right?</h1>
		<p>
			My skills shot <strong>through the roof</strong>. I had a great experience learning:
			<ul>
				<li>MVC from Ruby-On-Rails</li>
				<li>Git and version control</li>
				<li>Build tools</li>
				<li>A much better grasp on the SDLC</li>
				<li>Docker and containerization</li>
			</ul>
		</p>

		<p>
			My communication skills improved <small>(slightly)</small>. I mentioned the huge presentation I had to do, but I also had to work with other like-minded people, explaining my reasoning, taking criticism, adhering to group coding standards. It really did make a huge impact on my view on coding. 
		</p>

		<p>
			I've actually redone this project with the company <strong>Gifts Compass</strong>. Immensely better in my opinion. Most of the same features, AND we deployed a version of the application that allows the translator to preview changes in a testing environment. The code is cleaner, all changes are commited to a protected git branch. Whenever changes are ready we can merge the branch in and are good to go. 
		</p>



		<h1 class='mt-5'>What went wrong?</h1>
		<p>
			Looking back on it, my only regret is the complexity of the import/export process. I wish I could have that cleaned up a little bit. I also think I could've organized the templates a little better so that everything was better sorted into each component so that the app was easier to maintain. These are small gripes that I only know now that I'm a tad bit more seasoned.
		</p>

	</div>
</div>

{/block}
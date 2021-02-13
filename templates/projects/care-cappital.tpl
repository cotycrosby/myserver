{extends file="layout.tpl"}

{block name=body}
<div class='py-5 hero-image' style='min-height: 10px;'>
	<h1 class='display-1'>
		Coty Crosby
	</h1>
	<h1>Care Cappital</h1>
</div>

<div class='bg-red text-light m-0 section'>
	<div class='container  pb-5'>
		<div class='row'>
			<div class='col-md-6'>
				<p class='mt-5'>
					As a part of my associate's degree at <strong>Owens Community College</strong>, I had to pursue a full time internship for 1 semester. I got really lucky and landed a position at Americare Home Health. This company specializes in door to door nursing around the greater <strong>Toledo</strong> area. 
				</p>

				<p>
					The CEO and IT manager interviewed me and said that they have several websites and are looking to start an application to help monitor patient data remotely. I had very little experience, but I showed them my code examples and they were convinced that I could handle it.
				</p>

				<small>It also helped that they were getting a tax writeoff from <strong>OHIO MEANS JOBS</strong></small>

			</div>

			<div class='col-md-6'>
				<h3 class='mt-5'>Project Outline</h3>
				<hr class='border-light'>
				<ul class='list-group text-dark'>
					<li class='list-group-item'>Doctors, Americare Staff, Caregivers, and Patients can all review their data.</li>
					<li class='list-group-item'>Patients will recieve a phone call on a daily/weekly basis to record their biometrics.</li>
					<li class='list-group-item'>Staff will be able to set limits on the biometrics.</li>
					<li class='list-group-item'>If a patient enters a value above or below the alert threshold. A notification will be sent out.</li>
				</ul>
			</div>
		</div>
	</div>
</div>

<div class='section '>
	<div class='container blog py-5'>
		<p>
			The project didn't start immediately. My first month I was learning how to use PHP, HTML, and CSS. They had several wordpress sites that needed minor tuning and we used those as smaller projects to get my feet wet. 
		</p>

		<p>
			Eventually we went over the extra features that they wanted. They really liked the idea of a single page application, they had brand ideas laid out, and very rough drafts for how everything should look. They also brought in a friend of the CEO to help create the schema for the database. By this point they came up with the name <i>Care Cappital</i>
		</p>

		<p>
			I started by working on the basic CRUD pieces of the project. Creating the tables, layouts, backend code to handle inputing patient, caregiver, staff, and provider information. Then we used <strong>Twilio</strong> to automate phone calls to the patients everyday at 12:00pm. 
		</p>
		
		<p>
			After 3 months, the project was close, but not complete. They agreed to hire me on part time to continue working on it while I completed my associate's degree. Before my next rounds of finals, the application was complete (at least in an MVP state...). They kept me employed, providing me with maintenance work on the project for the remainder of my school year.
		</p>

		<p>
			Unfortuantely I had to leave before things got interesting. During my two weeks notice, the app was being reviewed by a legal team for HIPAA compliance. Then doctor's around the area signed on ~30 patients for the inital trial. I've kept partially in touch with the team, and the app has been directed towards a cheaper alternative to in home health care, allowing patients to recieve fewer visits from nursing staff.
		</p>
	</div>
</div>

<div class='bg-dark text-light section'>
	<div class='container blog'>
		<h1>What went right?</h1>
		<p>
			The experience really set me a part as I entered my bachelor's program at <strong>Bowling Green State University.</strong> I already had professional experience with front and backend development, databases, third party libraries, and gathering requirements from clients.
		</p>

		<h1 class='mt-5'>What went wrong?</h1>
		<p>
			This was my first time writing code that was more than ~100 lines long. It was the exact opposite of <strong>DRY</strong> (don't repeat yourself). All the crud portions were copied and pasted over and over agian.
		</p>

		<p>
			There is an administration panel that has queries nested in 3 foreach loops. It haunts me to this day. It is the reason I have impostor syndrome. Thankfully I learned about database relations, pivot tables, and joins so I hopefully don't write anything nearly that bad again.
		</p>

		<p>
			I didn't know how to set up a local environment and I was writing code in the browser editor on hostgator. Literally the worst coding experience I can imagine. We had other interns on site that helped collaborate on features. I wish I would have done more research on the topic before hand. 
		</p>

	</div>
</div>

{/block}
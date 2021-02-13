{extends file="layout.tpl"}

{block name=body}
<div class='py-5 hero-image' style='min-height: 10px;'>
	<h1 class='display-1'>
		Coty Crosby
	</h1>
	<h1>Anonymous Email System</h1>
</div>

<div class='bg-red text-light m-0 section'>
	<div class='container  pb-5'>
		<div class='row'>
			<div class='col-md-6'>
				<p class='mt-5'>
					<strong>Gifts Compass</strong> always has fun projects for me to do. I really enjoy making things that are outside of the standard crud project.
				</p>

				<p>
					This is a smaller project, the only requirement is that users send out an initial message from out application, and all other form of communications come through our server as a middle man, protecting the email address of both parties. (Literally its craigslist's email system...)
				</p>

			</div>

			<div class='col-md-6'>
				<h3 class='mt-5'>Project Outline</h3>
				<hr class='border-light'>
				<ul class='list-group text-dark'>
				<li class='list-group-item'>User's can contact eachother without knowing either parties email address or contact info. </li>
				<li class='list-group-item'>Users will respond to a Company email address.</li>
				</ul>
				<small>I told you it was small...</small>
			</div>
		</div>
	</div>
</div>

<div class='section '>
	<div class='container blog py-5'>
		<p>
			I tried referencing the code comment where we got a bulk of the task done, but the link wasn't stackoverflow, it was someone elses blog <small>(which is now dead)</small>.
		</p>

		<p>
			The blog article literally referenced how to imitate craigslist's email system using PHP. It needed 3 things: 
			<ul>
				<li>An email account.</li>
				<li>A web server capable of running cron jobs.</li>
				<li>A webserver that allows you to use a catchall email address.</li>
			</ul>

			These are relatively weak requirements, because the cheapest hosting providers usually provide these at no additional cost.
		</p>

		<p>
			Then we got started. PHP has documentation on their <a href='https://www.php.net/manual/en/function.imap-open.php' class='text-danger'>imap protocols</a> which if you want to interact with/automate emails is a great place to start reading. 
		</p>

		<p>
			The overall process was simple, we set an email address to be a catch all for all emails not explicitly listed. Lets assume that we have the following emails in our system:
			<ul>
			<li>bob@example.com</li>
			<li>john@example.com</li>
			<li>info@example.com</li>
			<li>admin@example.com</li>
			</ul>
			All we need to do is add a switchboard@example.com. Then any emails that don't have the username: bob, john, info, or admin will get funneled into the switchboard. 
		</p>

		<p>
			From their all we do is set the outgoing email address from the users hashcode directly to the user being contacted directly. If Jim Halpert wants to message another user Pam Beesly. We'll send an email out to Pam Beeslys email address (pbeesly@dundermifflin.com). The reply to is Jims hashed email which we store in the database. (G4RB4G3@example.com) If Pam replys to that email it will get hooked into the switchboard ( because G4RB4G3@example.com doesn't actually exist) and we can figure out who's email it is based on the hashcode.
		</p>

		<p>
			Finally all we have to do is run this script on a cronjob that way it looks like its seemless. 
		</p>

		<h3 class='mt-5'>BUT THEN DISASTER STRUCK</h3>
		<p>
			It wasn't horrendous. But 6 months after we finished this project, hostgator pulled the plug on the catch all email address. We had to slightly increase the complexity by placing the email hash in the subject of the outgoing emails and then using regex to parse the subject to find out the emails target.
		</p>
		
	</div>
</div>

<div class='bg-dark text-light section'>
	<div class='container blog'>
		<h1>What went right?</h1>
		<p>
			The project works. As intended
		</p>

		<h1 class='mt-5'>What went wrong?</h1>
		<p>
			The code scares me. PHP's imap library didn't get the oriented treatment like the databases modules did. I really need to refactor it. 
		</p>

		

	</div>
</div>

{/block}
{assign var="logos" value=['bootstrap.png', 'craft.png', 'docker.png', 'git.png', 'php.svg', 'react.png', 'sass.svg'] }

<div>
	<div class='container py-5 mb-5'>
		<div class='row'>
			<div class='col-md-12 text-center'>
				<h1 class='display-3'>Skillset</h1>
				
				<div class='text-center'>
				{foreach from=$logos item=$logo}
					<img src='/images/skill-logos/{$logo}' class='skill-logo'>
				{/foreach}
				</div>
			</div>
		</div>
	</div>

	<div class='container py-5'>
		<div class='row'>
			<div class='col-lg-12 text-center'>
				<h1 class='display-3'>Projects</h1>
				<a href='/projects/care-cappital.php' class='btn btn-success'>Care Cappital</a>
				<a href='/projects/anonymous-emails.php' class='btn btn-success'>Anonymous Email System</a>
				<a href='/projects/config-editor.php' class='btn btn-success'>Config File Editor</a>

			</div>
		</div>
	</div>
</div>
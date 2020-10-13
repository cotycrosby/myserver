## Git Workflow steps
Currently working on workflow automation via github webhooks.
---

This is the initial commit - the extra steps for webhooks. 

The first step is to initialize the repository. I use a shared hosting plan on hostgator. I set up a production staging and development environment. I created the subdomains for development using the subdomain tool in cpanel.
* Production is sitting at /home/user/public_html/
* Development is at /home/user/subdomains/dev/cotycrosby.codes/
* Staging is at /home/user/subdomains/staging/cotycrosby.codes/
* `cotycrosby.codes` is my repository name. When you pull files from the repo it will create a folder with the same name. 

The only reason for me splitting the subdomains this way is because I plan to have multiple applications on my subdomains for my server. I think we keep all of our subdomains in a subdirectory called branches off of /public_html/ I was worried that this might cause issues with the ssh redirects


### Initializing the server 
I started by adding an index.php and inserting some starter code in the production site. This allowed me to simulate the process for gifts compass. We can point it at the root directory.
* You don't do anything here. I was just trying to simulate what it would be like.

### create ssh keys
We will need 3 ssh keys in total. My computer, yours, and the servers. Git bash on windows replicates the unix command line so these steps should be the same for you on macOS
* In your terminal
* type `sshkey-gen`
* You can set your own path for the key: Default it goes to ~/.ssh/
* You can add a passphrase: The "sshless" deployment method requires this to be blank.
* The public key is saved in the .ssh folder and is called `id_rsa.pub`

### Create the repository
* Create an account on Github
* Create a repository for giftscompass.com. Don't include the README.md or .gitignore
* Upload the ssh keys
* On the repository main page you should get the command to import code for an existing repository. IE `git remote add username@github.com...`
* Adding myself to the repository.
* Ensure that its private.

### Initial commit 
* SSH back into the server. 
* CD into the public_html directory
* Run `git init`. All primary development programs(git/composer) should already be installed on the server.
* Use the remote git command to attach the code to the database

Now we can start using git. 
* Run `git status` and you should see all of the files listed.
* Run `touch .gitignore` to create the ignore file for github. This allows us to not track any files that are sensitive.

Examples of ignored files *its very important that ENV gets ignored.*
* `well-known`
* `gci-bin`
* `/branches/`
* `/gci/classes/.env` You will have to track changes to the ENV file.
* `.htaccess` Host gator modifies it with the PHP selector tool.
* All wordpress files and directories

### Pushing the code to the repository.
* Run `git status` to ensure we aren't going to track any unneeded files
* `git add .` will add all of the files to a list of changes.
* `git commit -m Initial commit` This will apply a message to this commit
* `git push origin master` This will actually upload the code base to the repository on github.

### Local Development
At the repository page you should see a dropdown button called `code`. Click on this and it should provide you with an https or ssh option
* select the ssh option
* copy the link
* On your computer, navigate to where you want the directory to be saved. 
* Run `git clone $sshlink`
* cd into the repository.

### Set up the local database
This one I'm unsure if we can use the development database located on the server or not. If we can, all we have to do is set the host to giftscompass.com

##### Local Database
* I used Mysql Workbench for working with the wpstaging database.
* I exported the database
* I started a local database using the connection tool
* I created a new schema
* I imported the database 

I think it would be better to use the development database

## Setting up the Development environment
Back on your local computer run
* `git branch development`
* `git checkout development`
* Change a file: add white space, create a readme
* `git add fileYouChangedOrAdded.filetype`
* `git commit -m "Please put a good message here`
* `git push origin development`

### Setup dev for watching the dev branch
I ssh'd back into the hostgator server
* Navigate to where the development directory should go. IE /home/user/subdomains/dev/
* Run the git clone ssh command using the `code` dropdown link
* You can rename the repository if you need to, then CD into the repo.
* If you run `git status` the branch should list master
* `git branch` should should master and development. If not run `git fetch --all`
* `git checkout development`
* You should be able to see the file/s you changed and it shouldn't reflect master. 


---
# Lets talk about the rest of this.  
---
### Setting it up so that we auto deploy changes
I'm still looking into this but I have an MVP solution that doesn't require that I have ssh access.
* I created a file called `deploy.php`
* The file echoes a shell_exec function call `git pull origin development`
* it outputs the results of the shell command

This should be the only command needed for me to get my changes on the server.


### Setting up changes between branches
* Staging can be set up the same way.
* Make changes to development
* Push those changes to the dev server and confirm they're working fine there.
* On your local computer, checkout the staging branch
* Run `git merge development`
* Resolve any merge conflicts
* Once clear, run `git push origin staging`
* Go to the staging deploy.php file
* Have the team test the code changes

From here on you can do your business as usual. OR
* On your local installation
* Run `git checkout staging` `git pull origin staging` `git checkout master` `git pull origin master` (Last one is probably not needed, but you never know)
* Run `git merge staging`
* Assuming nothing goes wrong, you can push the code up: `git push origin master`
* you can ssh into the public_html folder
* Run `git fetch --all` This won't actually change any of the files. 
* Run `git pull origin master`

You can use the log command to see the code changes based on commit. Alternatively you can use github to look through the list of commits. 

### Thoughts
This is the MVP solution. I'm currently looking into more advanced web deployment options that are within our budget( $0 ) and that meet your needs. 
* Deploy.php should be fine if we can just add it to the `.gitignore` list and we make sure it doesn't go live. 


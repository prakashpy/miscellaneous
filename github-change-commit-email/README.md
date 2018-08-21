# GIT Commits are pushed with wrong email ID, no problem! following steps will help you to update email ID.

## This are the steps to change your emails IDs so that you can have your contributions populated on your profile correctly.


Step 1: Clone your repository in your pc. using 	'''$git clone URL''' 	command.

Step 2: Change Dir to your cloned repo dir by **CD** command

Step 3: Copy myscript.sh from my git repo or create myscript.sh with same contect as in my file.


Step 4: Make sure you change your old and new email IDs in myscript.sh file.

Step 5: Make sure **myscript.sh** is executable. if not so 

	
	$chmod 777 myscript.sh 
	

Step 6: execute shell script with command:: 

	
	$./myscript.sh 
	

Step 7: now time to push with command:: 

	
	$git push --force --tags origin 'refs/heads/*'
	

All done. 


Source: (https://help.github.com/articles/changing-author-info/)

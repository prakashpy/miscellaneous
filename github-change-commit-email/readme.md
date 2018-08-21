# GIT Commits are pushed with wrong email ID, no problem! following steps will help you to update email ID.

## This are the steps to change your emails IDs so that you can have your contributions populated on your profile correctly.


Step 1: Clone your repository in your pc. using 

'''sh
$git clone https://github.com/user/yourrepourl.git 
'''

Step 2: Change Dir to your cloned repo dir by CD command

Step 3: Copy myscript.sh from my git repo or create myscript.sh with same contect as in my file.


Step 4: Make sure you change your old and new email IDs in myscript.sh file.

Step 5: Make sure myscript.sh is executable. if not so 

'''sh
$chmod 777 myscript.sh 
'''

Step 6: execute shell script with command:: 

'''sh
$./myscript.sh 
'''

Step 7: now time to push with command:: 

'''sh
$git push --force --tags origin 'refs/heads/*'
'''

All done. 


Source: (https://help.github.com/articles/changing-author-info/)


###	$conda info -e

###	conda create -n env_name python=3 jupyter

# venv anaconda hack ; replace '$jupyter notebook' command with $jn

# .bash_history

# add following line in .bash_history file
	jn() { source activate env_name ; jupyter notebook; }

# chmod 774 .bash_history
# ./.bash_history
# exit and force close
# launch terminal and type jn and it should open virutalenv jupyter notebook

# venv anaconda hack

# .bash_history

# add following line in .bash_history file
	jn() { source activate virtualenvname ; jupyter notebook; }

# chmod 774 .bash_history
# ./.bash_history
# exit and force close
# launch terminal and type jn and it should open virutalenv jupyter notebook

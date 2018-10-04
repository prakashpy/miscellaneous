# Run Project Jupyter Notebook on AWS EC2 (either amazon linux or ubuntu)

#### after spending almost whole day fixing "context.load_cert_chain(ssl_options['certfile'], ssl_options.get('keyfile', None)) ssl.SSLError: [SSL] PEM lib (_ssl.c:2536)" error
#### This are the steps to you should follow ( feel free to send me an email if doesn't work)


## Don't forget to update inbound rules for AWS EC2 Security Group; Enable inbound ports 22 (SSH), 443 (HTTPS) & 8888 (Jupyter Notebook) for all the traffic

#### SSH into Instance with .pem file 

Step 0:

For Ubuntu

        $ sudo apt-get update
For Amazon Linux

        $ sudo yum update
   
Step 1:

        $ wget https://repo.anaconda.com/archive/Anaconda3-5.3.0-Linux-x86_64.sh

###### From https://www.anaconda.com/download/#linux, right click on 64-Bit (x86) Installer (637 MB) and Copy Link Address

Step 2:

        $ bash Anaconda3-5.3.0-Linux-x86_64.sh

###### you need to hit ENTER/YES several time

Step 3:

        $ source .bashrc
    
Step 4:

        $ ipython
    
        ubuntu@ip-172-31-92-187:~$ ipython
        Python 3.7.0 (default, Jun 28 2018, 13:15:42) 
        Type 'copyright', 'credits' or 'license' for more information
        IPython 6.5.0 -- An enhanced Interactive Python. Type '?' for help.
        
        In [1]: from IPython.lib import passwd
        
        In [2]: passwd()
        Enter password: 
        Verify password: 
        Out[2]: 'sha1:efc9ab7636f2:2a832ba608f55e10baddd8279a7958c33c760d18'
        
        In [3]: exit
        
Step 5: 

    Note:: Save this Out[2] sha key somewhere 

Step 6: 

        $ jupyter notebook --generate-config

Step 7:

        $ mkdir certs
        $ cd certs

Step 8:

        $ openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout mycert.pem -out mycert.pem

Step 9:

        $ cd ~/.jupyter/
        $ vi jupyter_notebook_config.py 
    

###### Note:: Add following lines in the file..  

        c = get_config()
        
        # Kernel config
        c.IPKernelApp.pylab = 'inline'  # if you want plotting support always in your notebook
        
        # Notebook config
        c.NotebookApp.certfile = u'/home/ubuntu/certs/mycert.pem' #location of your certificate file
        c.NotebookApp.ip = '*'
        c.NotebookApp.open_browser = False  #so that the ipython notebook does not opens up a browser by default
        c.NotebookApp.password = u'sha1:efc9ab7636f2:2a832ba608f55e10baddd8279a7958c33c760d18'  #the encrypted password we generated above
        # Set the port to 8888, the port we set up in the AWS EC2 set-up
        c.NotebookApp.port = 8888

## make sure to change location of cert file :: either /home/ubuntu/certs/mycert.pem or /home/ec2-user/certs/mycert.pem

Step 10: 
    
        $ jupyter notebook

### it should work now. 

All done. 


Reference: 
https://chrisalbon.com/software_engineering/cloud_computing/run_project_jupyter_on_amazon_ec2/



Monday 03 February 2025 01:00:08 AM IST

# :r!date

/home/tech/setup:
setup.hlp
tmux.conf
tmuxx
ubuntu.vbs

# Setting up single click tmux window open from windows

https://github.com/settings/tokens

## Linux
1. Set hostname 
    $ hostnamectl set-hostname "hostname"

2. Enable root ssh login
/etc/ssh/sshd_config::
	#PermitRootLogin prohibit-password >> PermitRootLogin yes

3. Set temp proxy
/* AS- Note: The below export will be applicable only for the current session and it is recommended
 to update in the /etc/environment */
	$ export http_proxy=
	$ export https_proxy=

4. git clone the tech repo
    $ cd /home/
    $ git clone https://github.com/ananthsamiya/tech.git

5. Configure /etc/enviroment
/* AS- Note: Update proxy in /etc/environment */
	$ echo "http_proxy=" | sudo tee -a /etc/environment
	$ echo "https_proxy=" | sudo tee -a /etc/environment
	$ echo "ftp_proxy=" | sudo tee -a /etc/environment
	$ echo "socks_proxy=" | sudo tee -a /etc/environment
	$ echo "no_proxy=" | sudo tee -a /etc/environment
/* AS- Note: Update path in /etc/environment */
	$ export PATH=$PATH:/home/tech/setup/

6. Copy tmux.conf & tmuxx
	$ cp /home/tech/setup/tmux.conf ~/.tmux.conf
	$ cp /home/tech/setup/vimrc ~/.vimrc

7. IF startup config requried, refer /home/tech/setup/startup.service

8. Install required software
    $ apt install gh
    $ gh auth login
        What account do you want to log into? GitHub.com
        What is your preferred protocol for Git operations? SSH
        Upload your SSH public key to your GitHub account? /root/.ssh/id_rsa.pub
        How would you like to authenticate GitHub CLI? Login with a web browser

        First copy your one-time code: F2DD-635D
        Press Enter to open github.com in your browser...
        ...
        x! Failed opening a web browser at https://github.com/login/device
        ...
    /* AS- Note: Open the browser and enter the one-time code: */

## Windows:
1. Download PuTTY

/* AS- Note: <ubuntu> name should be same as in the ubuntu.vbs script*/
2. In PuTTY, configure Server IP and save it as ubuntu;

3. Copy ubuntu.vbs script to your windows Desktop and update the password.

## RHEL subscription:
subscription-manager register --username=ananth --password=cloudsw --auto-attach



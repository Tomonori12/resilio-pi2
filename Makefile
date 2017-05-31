all:
	@echo "setup"
	@echo "disk"

setup:
	sudo apt-get update
	sudo apt-get install -y emacs24-nox

disk:
	df -h
	sudo blkid

add:
	@echo "add uuid and other disk info"
	sudo emacs -nw /etc/fstab

resilio:
	wget https://download-cdn.resilio.com/stable/linux-armhf/resilio-sync_armhf.tar.gz
	mkdir ~/.resilio
	tar xvf resilio-sync_armhf.tar.gz -C ~/.resilio

btsync:
	wget http://antimatrix.org/BTSync/Install/btsync_arm-1.3.109.tar.gz
	mkdir ~/.btsync
	tar xvf btsync_arm-1.3.109.tar.gz -C ~/.btsync


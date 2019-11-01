# prebuilt preempt-rt patched kernel for rpi4 only
built 4.19.58 preempt-rt patched kernel. Pull down and deploy 

Download prebuilt kernel
------------
Download and transfer all files in this directory to rpi23:

     sudo apt-get install subversion
     svn checkout https://github.com/thanhtam-h/rpi4-4.19.58-rt/trunk/prebuilt
     cd prebuilt
     
Automatically deploy
------------
Run these commands and deploy automatically, your rasperry pi will be updated and rebooted 
	
	 chmod +x deploy.sh
	 ./deploy.sh
	 	 
Post processing
------------ 
We need to fix Linux header before we can use it to build module native on rpi in future:

	 cd /usr/src/linux-headers-4.19.58-rt22-v7l+
	 sudo make -i modules_prepare
	 
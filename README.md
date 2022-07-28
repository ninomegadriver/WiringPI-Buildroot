# Buildroot package for building WiringPI devLib  
  
Buildroot Package for building the last known stable release for WiringPI devLib.  
  
Copy the sources to your buildroot folder and add the following line to "packages/Config.in"  
``` 
source "package/wiringpilib/Config.in"
```
  
And them "make menuconfig", the option should show up in "target packages"  
  
Nino MegaDriver  
nino@nino.com.br  
http://www.megadriver.com.br  
  

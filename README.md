# lazy2ChangePythonVersion
*** is not tested ***
## main contain
Different application using different python version, but they just write python, but python2 or python3, it help us to change easily.   
## how to use
### first way
1. fix the config/main.config file  
A comment begins with "#"  
an example:  
```
#This is comments
#makehuman using python2
makehuman=2
#This is comments
```
2. run quickStart.sh without parameters **as root**  
```
sudo ./quickStart.sh
```

### second way
run quickStart.sh with a parameters **as root**  
for example:  
```
sudo ./quickStart.sh makehuman=2
```

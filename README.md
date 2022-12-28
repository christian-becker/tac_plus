# tac_plus
Run "tac_plus", a simple TACACS+ daemon, on Ubuntu 18.04 with Docker.  
The version 4.0.4.27a is an old software from Shrubberry Networks, released on 2013-08-04, but it still works. :-) The .deb packages are only available until Ubuntu 18.04 (deprecated in future versions). 
WARNING! Please use this container only in an additional secured or testing environment. 

---

## how to use it
If you just want to use the container from docker hub, create the directories and configurations - then proceed with step 2.  

### 1.) OPTIONAL: BUILD the docker container
```
docker build -t christianbecker/tac_plus .
```

---

### 2.) CONFIGURE the container - tac_plus
Just copy your tac_plus configuration to "etc-tacacs+" directory or adjust your settings in the existing file "tac_plus.conf".

---

### 3.) USE the container
Run the container with: 
```
docker run --name tac_plus -p 49:49 -v $(pwd)/etc-tacacs+:/etc/tacacs+/ -v $(pwd)/accounting/tac_plus.acct:/var/log/tac_plus.acct -d -t --restart=always christianbecker/tac_plus 
```


---

## project links
[GitHub](https://github.com/christian-becker/tac_plus)  
[Docker Hub](https://hub.docker.com/r/christianbecker/tac_plus/)


---

## Authors
* **Christian Becker** - [christian-becker](https://github.com/christian-becker)

## License
This project is licensed under the MIT License - see the [LICENSE](https://github.com/christian-becker/tac_plus/blob/master/LICENSE) file for details.


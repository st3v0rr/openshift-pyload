#OpenShift PyLoad

##Introduction

pyLoad is a fast, lightweight and full featured download manager for many One-Click-Hoster, container formats like DLC, video sites or just plain http/ftp links. It aims for low hardware requirements and platform independence to be runnable on all kind of systems (desktop pc, netbook, NAS, router).

Despite its strict restriction it is packed full of features just like webinterface, captcha recognition, unrar and much more.

pyLoad is divided into core and clients, to make it easily remote accessible. Currently there are a webinterface, command line interface, and a GUI written in Qt.

Source [official pyload](https://pyload.net/).

##Prerequisites

- Running OpenShift cluster (tested with OKD 3.11 on CentOS 7)
- Persistent Volume Claims ReadWriteOnce (128 MiB for Config and 128 GiB for downloads)

##Installation and Running

Installing is very easy.

Log-In to your OpenShift instance.

####Via Console
```sh
oc login -u user -p passwort https://youropenshiftclusterurl:8443
```
(Optional) Create a new project
```sh
oc new-project pyload
```
Process the template
```sh
oc process -f https://raw.githubusercontent.com/st3v0rr/openshift-pyload/master/template.yml | oc create -f -
```
Start the build
```sh
oc start-build pyload
```
Wait until the deployment becomes ready.

####Via Webinterface

- (Optional) Create a new project
- Add to Project > Import YAML / JSON
- Paste the Content of the template.yml file into the Wizard textbox and click Create
- Keep "Process the template" checked and click Continue

Wait until the deployment becomes ready.

##Finally
Enter the Pyload Webinterface. Done.

```sh
USERNAME=pyload
PASSWORD=pyload
```

Don't forget to change the default password!
